import 'package:auto_route/auto_route.dart';
import 'package:brumaire_frontend/router.gr.dart';
import 'package:brumaire_frontend/ui/widgets/card_link.dart';
import 'package:brumaire_frontend/ui/widgets/video_reader.dart';
import 'package:flutter/material.dart';

class ActionPage extends StatelessWidget {
  const ActionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CardLink(
                  title: "appeler l'assistance",
                  text: "Vous avez besoin d'une assistance telephonique ?",
                  image: 'assets/images/call.jpg',
                  onTap: () => context.router.push(const CallRoute()),
                ),
                CardLink(
                  title: 'Chatter avec nos assistants',
                  text: 'Vous voulez une chatter avec un technicien ?',
                  image: 'assets/images/chat.jpg',
                  onTap: () => context.router.push(const ChatRoute()),
                ),
                const VideoReader(
                  videoUrl: "https://www.youtube.com/watch?v=7eNXmBQgUQc",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
