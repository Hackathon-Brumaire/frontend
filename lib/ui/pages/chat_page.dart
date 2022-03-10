


import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      itemBuilder: (context, index){
      return Bubble();
    }, itemCount: fakeItems.length,));
  }
}


final fakeItems = [
  "Bonjour"
];


class Bubble extends StatefulWidget {
  const Bubble({Key? key}) : super(key: key);

  @override
  _BubbleState createState() => _BubbleState();
}

class _BubbleState extends State<Bubble> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.chat_outlined, color: AppColors().black,),
      Card(
        color: AppColors().brown,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          )
        ),
        child: Container(
          padding: EdgeInsets.all(10),
          child: Text('okok', style: context.theme.primaryTextTheme.headline4?.copyWith(color: AppColors().white ),),),)
    ],);
  }
}
