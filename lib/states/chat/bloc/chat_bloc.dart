import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:brumaire_frontend/models/socket_data.dart';
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
      event.map(
        onConnect: (event) => _onConnect(event, emit),
        onSocketEventChange: (event) => _onSocketEventChange(event, emit),
        onReply: (event) => _onReply(event, emit),
      );
    });
  }

  _onConnect(OnConnect e, Emitter<ChatState> emit) async {
    connectAndListen();
    streamSocket.getResponse.listen((event) {
      add(ChatEvent.onSocketEventChange(event));
    });
  }

  _onSocketEventChange(OnSocketEventChange event, Emitter<ChatState> emit) {

    final newState = state.copyWith(
      feed: [...state.feed, event.d],
    );

    // newState.feed.map((e) {
    //   e.
    // });

    emit(newState);
  }

  _onReply(OnReply event, Emitter<ChatState> emit) {
    sendMessage(event.id);
    final List<NextAnswerData>? elems = state
        .feed[state.feed.length - 1].nextAnswers
        ?.map((el) => el.copyWith(selected: el.id.toString() == event.id))
        .toList();
    final feeds = state.feed.map((socketData) {
      if (state.feed.indexOf(socketData) == state.feed.length - 1) {
        return socketData.copyWith(nextAnswers: [...elems!]);
      }
      return socketData;
    }).toList();
    emit(state.copyWith(feed: feeds));
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
        'welcome',
        (data) => streamSocket
            .addResponse(SocketData.fromWelcome(handleWelcome(data))));
    socket.on(
        'question',
        (data) => streamSocket
            .addResponse(SocketData.fromQuestion(handleQuestion(data))));
    socket.on('supportUser',
            (data) => streamSocket.addResponse(SocketData.fromNoMoreQuestion()));
    socket.on('noMoreQuestion',
        (data) => streamSocket.addResponse(SocketData.fromNoMoreQuestion()));
    socket.on('disconnect', (_) => print('disconnected'));
  }

  Welcome handleWelcome(Map<String, dynamic> data) => Welcome.fromJson(data);

  Question handleQuestion(Map<String, dynamic> data) => Question.fromJson(data);

  Conversation handleEndOfQuestions(List<dynamic> data) => Conversation(
        histories: List<ConversationHistory>.from(
          data.map((x) => ConversationHistory.fromJson(x)),
        ),
      );

  void sendMessage(String answerId) => socket.emit("sendMessage", answerId);
}
