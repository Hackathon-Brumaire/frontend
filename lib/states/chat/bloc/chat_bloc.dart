import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:brumaire_frontend/models/SocketData.dart';
import 'package:brumaire_frontend/models/SocketData.dart';
import 'package:brumaire_frontend/models/SocketData.dart';
import 'package:brumaire_frontend/models/conversation.dart';
import 'package:brumaire_frontend/models/conversation_history.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'chat_event.dart';

part 'chat_state.dart';

part 'chat_bloc.freezed.dart';

class StreamSocket {
  final _socketResponse = StreamController<SocketData>();

  void Function(SocketData) get addResponse => _socketResponse.sink.add;

  Stream<SocketData> get getResponse => _socketResponse.stream;

  StreamSocket();

  void dispose() {
    _socketResponse.close();
  }
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late StreamSocket streamSocket;
  late IO.Socket socket;


  ChatBloc(this.streamSocket) : super(ChatState.initial()) {
    on<ChatEvent>((event, emit) {
      event.map(onConnect: (e) async {
        connectAndListen();
        streamSocket.getResponse.listen((event) {
          add(ChatEvent.onSocketEventChange(event));
        });

      }, onSocketEventChange: (e) async {
        final newState = state.copyWith(
          feed: [...state.feed, e.d],
        );
        emit(newState);
      }, onReply: (e) async  {
          sendMessage(e.id);
          final elems = state.feed[state.feed.length-1].nextAnswers?.map((el) => el.copyWith(selected: el.id.toString() == e.id)).toList();
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
    socket.on('welcome', (data) => streamSocket.addResponse(SocketData.fromWelcome(handleWelcome(data))));
    socket.on('question', (data) => streamSocket.addResponse(SocketData.fromQuestion(handleQuestion(data))));
    socket.on('noMoreQuestion', (data) =>streamSocket.addResponse(SocketData.fromNoMoreQuestion()));
    socket.on('disconnect', (_) => print('disconnected'));

  }

  Welcome handleWelcome(Map<String, dynamic> data) => Welcome.fromJson(data);

  Question handleQuestion(Map<String, dynamic> data) => Question.fromJson(data);

  Conversation handleEndOfQuestions(List<dynamic> data) => Conversation(
      histories: List<ConversationHistory>.from(
          data.map((x) => ConversationHistory.fromJson(x))));

  void sendMessage(String answerId) => socket.emit("sendMessage", answerId);
}
