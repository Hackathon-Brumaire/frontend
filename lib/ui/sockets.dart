import 'package:brumaire_frontend/models/question.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';

import 'package:flutter/material.dart';

class SocketClass extends StatefulWidget {
  const SocketClass({ Key? key }) : super(key: key);

  @override
  State<SocketClass> createState() => _SocketClassState();
}

class _SocketClassState extends State<SocketClass> {

  late Socket socket;
  
  @override
  void initState() {
    super.initState();
    connectToServer();
  }

  void connectToServer() {
    try {
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
      socket.on('disconnect', (_) => print('disconnect'));
      socket.on('fromServer', (_) => print(_));

    } catch (e) {
      print(e.toString());
    }
  }


  handleWelcome(Map<String, dynamic> data) {
    print(data["text"]);
    print(data["createdAt"]);
  }
  
  handleQuestion(Map<String, dynamic> data) {
    Question question = Question.fromJson(data);
    print(question);
  }

  // Send update of user's typing status 
  sendTyping(bool typing) {
    socket.emit("typing",
      {
        "id": socket.id,
         "typing": typing,
      });
  }
   
  // Listen to update of typing status from connected users
  void handleTyping(Map<String, dynamic> data) {
    print(data);
  }

  // Send a Message to the server
  sendMessage(String message) {
      socket.emit("sendMessage",
        {
          "id": socket.id,
          "message": message, // Message to be sent
          "timestamp": DateTime.now().millisecondsSinceEpoch,
        },
      );
  }

  // Listen to all message events from connected users
  void handleMessage(Map<String, dynamic> data) {
    print(data);
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}