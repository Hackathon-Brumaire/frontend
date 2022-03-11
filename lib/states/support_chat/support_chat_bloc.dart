import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:brumaire_frontend/api/room_service.dart';
import 'package:brumaire_frontend/models/conversation.dart';
import 'package:brumaire_frontend/models/conversation_history.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/room_conversation.dart';
import 'package:brumaire_frontend/models/socket_data.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:brumaire_frontend/states/chat/bloc/chat_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'support_chat_event.dart';

part 'support_chat_state.dart';

part 'support_chat_bloc.freezed.dart';

class SupportChatBloc extends Bloc<SupportChatEvent, SupportChatState> {
  late StreamSocket streamSocket;
  late IO.Socket socket;

  SupportChatBloc(this.streamSocket) : super(SupportChatState.initial()) {
    on<SupportChatEvent>((event, emit) async{
      await event.map(
          onConnect: (e) async {
            final RoomConversation conversationByRoomId =
                await getConversationByRoomId(e.id);
            final cvs = conversationByRoomId.conversationHistorics.sortedBy((element) => element.createdAt);
            final newState = cvs.map(
              (e) {
                if(e.messageType == "answer"){
                 return SocketData(type: EventType.question, nextAnswers: [NextAnswerData(id: -1, title: e.message, selected: true)]);
                }
                return SocketData(type: EventType.question, nextAnswers: null, text: e.message);
              },
            ).toList();
            emit(state.copyWith(feed: newState));

            connectAndListen();
            streamSocket.getResponse.listen((event) {
              add(SupportChatEvent.onSocketEventChange(event));
            });
          },
          onSocketEventChange: (e) async {
            final newState = state.copyWith(
              feed: [...state.feed, e.d],
            );
            emit(newState);
          },
          onReply: (e) async {
            sendMessage(e.id);
            emit(state.copyWith(feed: [...state.feed, SocketData(id : -2, type: EventType.question, nextAnswers: [NextAnswerData(id: -2, title: e.id, selected: true)])]));

          });
    });
  }

  @override
  Future<void> close() {
    streamSocket.dispose();
    socket.onDisconnect((_) => print('disconnect'));
    return super.close();
  }

  void connectAndListen() {
    socket = IO.io('https://brumaire.nospy.fr/',
        IO.OptionBuilder().setTransports(['websocket']).build());

    // Handle socket events
    socket.on('connect', (_) => print('connect: ${socket.id}'));
    socket.on(
        'question',
        (data) => streamSocket
            .addResponse(SocketData.fromQuestion(handleQuestion(data))));
    socket.on('disconnect', (_) => print('disconnected'));
  }

  Welcome handleWelcome(Map<String, dynamic> data) => Welcome.fromJson(data);

  Question handleQuestion(Map<String, dynamic> data) => Question.fromJson(data);

  Conversation handleEndOfQuestions(List<dynamic> data) => Conversation(
      histories: List<ConversationHistory>.from(
          data.map((x) => ConversationHistory.fromJson(x))));

  void sendMessage(String answerId) => socket.emit("sendMessage", answerId);
}
