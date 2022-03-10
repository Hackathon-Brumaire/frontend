import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:brumaire_frontend/models/conversation.dart';
import 'package:brumaire_frontend/models/conversation_history.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class StreamSocket{
  final _socketResponse= StreamController<dynamic>();

  void Function(dynamic) get addResponse => _socketResponse.sink.add;

  Stream<dynamic> get getResponse => _socketResponse.stream;

  void dispose(){
    _socketResponse.close();
  }
}

class ChatBloc extends Bloc<ChatEvent, ChatState> {
late StreamSocket? streamSocket;
late IO.Socket socket;

  ChatBloc(this.streamSocket) : super(const _Initial()) {

    on<ChatEvent>((event, emit) {
      streamSocket?.dispose();
      streamSocket?.getResponse.listen((event) {
        
      });

      // TODO: implement event handler
      event.map(started: started)
    });
  }

  void connectAndListen(){
  IO.Socket socket = IO.io('https://brumaire.nospy.fr/',
      IO.OptionBuilder()
       .setTransports(['websocket']).build());

     // Handle socket events
      socket.on('connect', (_) => print('connect: ${socket.id}'));
      socket.on('welcome', (data) => streamSocket?.addResponse(handleWelcome(data)));
      socket.on('question', (data) => streamSocket?.addResponse(handleQuestion(data)));
      //socket.on('noMoreQuestion', (data) => streamSocket?.addResponse(handleEndOfQuestions(data)));
      socket.on('disconnect', (_) => print('disconnect'));

    socket.onDisconnect((_) => print('disconnect'));
  }

  Welcome handleWelcome(Map<String, dynamic> data) {
    return Welcome.fromJson(data);
  }

  Question handleQuestion(Map<String, dynamic> data) {
    return Question.fromJson(data);
  }

  Conversation handleEndOfQuestions(List<dynamic> data) {
    return Conversation(histories: List<ConversationHistory>.from(data.map((x) => ConversationHistory.fromJson(x))));    
  }

  // Send a Message to the server
  sendMessage(int answerId) {
      socket.emit("sendMessage", answerId);
  }

}


