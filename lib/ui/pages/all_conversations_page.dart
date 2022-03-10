import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';

class AllConversationsPage extends StatelessWidget {
  const AllConversationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: const Icon(Icons.chevron_left),
      //     onPressed: () => Navigator.of(context).pop()
      //   ),
      // ),
      body: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image_fond_conversation_chat_bot.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text("All conversations",
                          style: context.theme.primaryTextTheme.headline2
                              ?.copyWith(color: AppColors().black)),
                    )
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            tileColor: Colors.lightBlue,
                            title: Text(
                                "Conversation bot " + (index + 1).toString()),
                            trailing: const Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
