import 'package:brumaire_frontend/api/room_service.dart';
import 'package:brumaire_frontend/models/room.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AllConversationsPage extends StatelessWidget {
  const AllConversationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white,
        ),
        elevation: 0,
        leading: IconButton(
            icon: const Icon(Icons.chevron_left),
            onPressed: () => Navigator.of(context).pop()),
      ),
      body:
          // Positioned.fill(
          //   child: Container(
          //     decoration: const BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage(
          //             "assets/images/image_fond_conversation_chat_bot.png"),
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/chat_bot_icone.png",
                    height: 40,
                    width: 40,
                  ),
                  Expanded(
                    child: FutureBuilder<List<Room>>(
                        future: getRooms(),
                        builder:
                            (BuildContext context, AsyncSnapshot snapshot) {
                          if (!snapshot.hasData) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          List<Room> rooms = snapshot.data;
                          if (snapshot.data.length == 0) {
                            return Center(
                              child: Text(
                                "There is currently no conversation",
                                style: context.theme.primaryTextTheme.headline2,
                              ),
                            );
                          } else {

                            return ListView.builder(
                                itemCount: rooms.length,
                                itemBuilder: (context, index) {
                                  final item = snapshot.data[index];
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ListTile(
                                      onTap: () {


                                      },
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0)),
                                      tileColor: Colors.grey,
                                      title: Text(
                                          "Conversation bot " +
                                              (index + 1).toString(),
                                          textAlign: TextAlign.center),
                                      trailing: const Icon(
                                        Icons.chevron_right,
                                        color: Colors.black,
                                      ),
                                    ),
                                  );
                                });
                          }
                        }),
                  )
                ],
              ),
              Expanded(
                child: FutureBuilder<List<Room>>(
                    future: getRooms(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      List<Room> rooms = snapshot.data;
                      if (snapshot.data.length == 0) {
                        return Center(
                          child: Text(
                            "There is currently no conversation",
                            style: context.theme.primaryTextTheme.headline2,
                          ),
                        );
                      } else {
                        return ListView.builder(
                            itemCount: rooms.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListTile(
                                  onTap: () => print("clic"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5.0)),
                                  tileColor: Colors.grey,
                                  title: Text(
                                    "Conversation bot ${index + 1}",
                                    textAlign: TextAlign.center,
                                  ),
                                  trailing: const Icon(
                                    Icons.chevron_right,
                                    color: Colors.black,
                                  ),
                                ),
                              );
                            });
                      }
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
