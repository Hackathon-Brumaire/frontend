import 'package:auto_route/auto_route.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:brumaire_frontend/router.gr.dart';
import 'package:brumaire_frontend/states/chat/bloc/chat_bloc.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatPage extends StatefulWidget implements AutoRouteWrapper {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) =>
                ChatBloc(StreamSocket())..add(const ChatEvent.onConnect()))
      ], child: this);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            }, icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: SafeArea(
        child: BlocConsumer<ChatBloc, ChatState>(
          listener: (context, state) {
            items.clear();
            if (state.feed.isNotEmpty) {
              state.feed.forEach((e) {
                if (e.type == EventType.welcome) {
                  items.add(BubbleWidget(text: e.text!));
                }
                if (e.type == EventType.question) {
                  // if(e.isAnswered!){
                  //   items.add(ProposalWidget(id: e.answered!.id, title: e.answered!.title, isSelected: e.answered!.selected));
                  // }else{
                  //
                  // }

                  items.add(BubbleWidget(text: e.title!));
                  final List<Widget>? list = e.nextAnswers
                      ?.map((e) => ProposalWidget(
                            id: e.id,
                            title: e.title,
                            isSelected: e.selected,
                            onSelected: (index) {
                              context
                                  .read<ChatBloc>()
                                  .add(ChatEvent.onReply(index.toString()));
                            },
                          ))
                      .toList();
                  if (list != null) {
                    items.addAll(list);
                  }
                }
                if (e.type == EventType.noMoreQuestion) {
                  items.add(BubbleWidget(text: e.title!));
                }
              });
              if (items.length > 2) {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              }
            }
            items.add(SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
            ));
          },
          builder: (context, state) {
            if (state.feed.isEmpty) {
              return const Center(child: CircularProgressIndicator());
            } else {
              return Stack(
                children: [
                  ListView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemBuilder: (context, index) {
                      return items[index];
                    },
                    itemCount: items.length,
                  ),
                  Positioned(
                    bottom: 20,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 150,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: AppColors().green,
                                onPressed: () {
                                  context.router.push(CallReparatorRoute());
                                },
                                child: Text("Oui")),
                          ),
                          SizedBox(
                            width: 150,
                            child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                color: AppColors().grey.withOpacity(1),
                                onPressed: () {
                                  context.router.navigate(ActionRoute());
                                },
                                child: Text("Non")),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

enum UserType { client, bot, pro }

class BubbleWidget extends StatelessWidget {
  const BubbleWidget(
      {Key? key, required this.text, this.userType = UserType.bot})
      : super(key: key);

  final UserType userType;
  final String text;

  dynamic applyOnUserType(dynamic client, dynamic bot, dynamic pro) {
    switch (userType) {
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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: applyOnUserType(MainAxisAlignment.end,
          MainAxisAlignment.start, MainAxisAlignment.start),
      children: [
        if (userType != UserType.client)
          Icon(
            applyOnUserType(null, Icons.person, Icons.personal_video),
            color: const AppColors().black,
            size: 40,
          ),
        Flexible(
          child: Card(
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
                text,
                maxLines: 20,
                style: context.theme.primaryTextTheme.headline4
                    ?.copyWith(color: const AppColors().white),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class ProposalWidget extends StatelessWidget {
  const ProposalWidget(
      {Key? key,
      required this.id,
      required this.title,
      this.onSelected,
      required this.isSelected})
      : super(key: key);

  final int id;
  final String title;
  final bool isSelected;
  final Function(int)? onSelected;

  Widget _buildIsSelected(List<Widget> children) => Row(
        children: children,
        mainAxisAlignment: MainAxisAlignment.end,
      );

  @override
  Widget build(BuildContext context) {
    final child = GestureDetector(
      onTap: () {
        onSelected!(id);
      },
      child: Card(
        elevation: 0,
        color: !isSelected ? const AppColors().grey : AppColors().green,
        shape: !isSelected
            ? RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(5),
                topRight: const Radius.circular(5),
                bottomLeft: const Radius.circular(5),
                bottomRight: const Radius.circular(5),
              ))
            : RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomLeft: const Radius.circular(15),
                bottomRight: const Radius.circular(0),
              )),
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: context.theme.primaryTextTheme.headline3
                ?.copyWith(color: const AppColors().white),
          ),
        ),
      ),
    );

    if (isSelected) {
      return _buildIsSelected([child]);
    } else {
      return child;
    }
  }
}
