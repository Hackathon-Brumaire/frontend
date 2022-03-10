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

  ChatBloc(this.streamSocket) : super(ChatState.initial()) {

    on<ChatEvent>((event, emit) {
      event.map(onConnect: (e) async{
        streamSocket?.dispose();
        streamSocket?.getResponse.listen((event) {
          add(ChatEvent.onChange(event));
        });
      }, onChange: (e) async{
      });
    });
  }


  @override
  Future<void> close() {
    streamSocket?.dispose();
    return super.close();
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

  Welcome handleWelcome(Map<String, dynamic> data) => Welcome.fromJson(data);
  Question handleQuestion(Map<String, dynamic> data) => Question.fromJson(data);
  Conversation handleEndOfQuestions(List<dynamic> data) => Conversation(histories: List<ConversationHistory>.from(data.map((x) => ConversationHistory.fromJson(x))));

  // Send a Message to the server
  void sendMessage(int answerId) => socket.emit("sendMessage", answerId);

}


