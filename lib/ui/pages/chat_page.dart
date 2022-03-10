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
    return Scaffold(
        body: SafeArea(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return fakeItems[index];
        },
        itemCount: fakeItems.length,
      ),
    ));
  }
}

const fakeItems = [
  BubbleWidget(),
  BubbleWidget(),
  BubbleWidget(
    userType: UserType.client,
  ),
  BubbleWidget(),
  ProposalWidget()
];

enum UserType { client, bot, pro }

class BubbleWidget extends StatefulWidget {
  const BubbleWidget({Key? key, this.userType = UserType.bot})
      : super(key: key);

  final UserType userType;

  @override
  _BubbleWidgetState createState() => _BubbleWidgetState();
}

class _BubbleWidgetState extends State<BubbleWidget> {
  dynamic applyOnUserType(dynamic client, dynamic bot, dynamic pro) {
    switch (widget.userType) {
      case UserType.client:
        return client;
      case UserType.bot:
        return bot;
      case UserType.pro:
        return pro;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: applyOnUserType(MainAxisAlignment.end,
          MainAxisAlignment.start, MainAxisAlignment.start),
      children: [
        if (widget.userType != UserType.client)
          Icon(
            applyOnUserType(null, Icons.person, Icons.personal_video),
            color: const AppColors().black,
            size: 40,
          ),
        Card(
          color: applyOnUserType(const AppColors().lightGreen,
              const AppColors().brown, const AppColors().lightBlue),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
            topLeft: applyOnUserType(const Radius.circular(15),
                const Radius.circular(0), const Radius.circular(0)),
            topRight: const Radius.circular(15),
            bottomLeft: const Radius.circular(15),
            bottomRight: applyOnUserType(const Radius.circular(0),
                const Radius.circular(15), const Radius.circular(15)),
          )),
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'okok',
              style: context.theme.primaryTextTheme.headline4
                  ?.copyWith(color: const AppColors().white),
            ),
          ),
        )
      ],
    );
  }
}

class ProposalWidget extends StatelessWidget {
  const ProposalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
