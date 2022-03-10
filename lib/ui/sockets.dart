import 'package:brumaire_frontend/models/conversation_history.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:socket_io_client/socket_io_client.dart';
import 'package:flutter/material.dart';

class Sockets extends StatefulWidget {
  const Sockets({ Key? key }) : super(key: key);

  @override
  State<Sockets> createState() => _SocketsState();
}

class _SocketsState extends State<Sockets> {

  late Socket socket;
  
  @override
  void initState() {
    super.initState();
    connectToServer();
    sendMessage(1);
    sendMessage(3);
  }

  void connectToServer() {
    try {     
      // Configure socket transports must be sepecified
      socket = io('https://brumaire.nospy.fr/', <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': false,
      });
     
      // Connect to websocket
      socket.connect();
     
      // Handle socket events
      socket.on('connect', (_) => print('connect: ${socket.id}'));
      socket.on('welcome', (data) => handleWelcome(data));
      socket.on('question', (data) => handleQuestion(data));
      socket.on('noMoreQuestion', (data) => handleEndOfQuestions(data));
      socket.on('disconnect', (_) => print('disconnect'));
      //add listeners
      // socket.clearListeners();
      // socket.disconnect();

    } catch (e) {
      print(e.toString());
    }   
  }

  handleWelcome(Map<String, dynamic> data) {
    Welcome welcome = Welcome.fromJson(data);
  }

  handleQuestion(Map<String, dynamic> data) {
    Question question = Question.fromJson(data);
  }

  handleEndOfQuestions(List<dynamic> data) {
    List<ConversationHistory> conversations = List<ConversationHistory>.from(data.map((x) => ConversationHistory.fromJson(x)));    
  }

  // Send a Message to the server
  sendMessage(int answerId) {
      socket.emit("sendMessage", answerId);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}