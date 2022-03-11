import 'package:auto_route/auto_route.dart';
import 'package:brumaire_frontend/models/question.dart';
import 'package:brumaire_frontend/models/welcome.dart';
import 'package:brumaire_frontend/states/support_chat/support_chat_bloc.dart';
import 'package:brumaire_frontend/states/chat/bloc/chat_bloc.dart';
import 'package:brumaire_frontend/ui/theme/i_theme_styles.dart';
import 'package:brumaire_frontend/ui/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../router.gr.dart';

class SupportChatPage extends StatefulWidget implements AutoRouteWrapper {
  const SupportChatPage({Key? key, @PathParam('id') required this.id})
      : super(key: key);

  final int id;

  @override
  Widget wrappedRoute(BuildContext context) => MultiBlocProvider(providers: [
        BlocProvider(
            create: (context) => SupportChatBloc(StreamSocket())
              ..add(SupportChatEvent.onConnect(id)))
      ], child: this);

  @override
  State<SupportChatPage> createState() => _SupportChatPageState();
}

class _SupportChatPageState extends State<SupportChatPage>
    with SingleTickerProviderStateMixin {
  late final ScrollController _scrollController;
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    _scrollController = ScrollController();
    _textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textEditingController.dispose();
    super.dispose();
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
            },
            icon: Icon(Icons.arrow_back_ios_rounded)),
      ),
      body: SafeArea(
        child: BlocConsumer<SupportChatBloc, SupportChatState>(
          listener: (context, state) {
            items.clear();
            if (state.feed.isNotEmpty) {
              state.feed.forEach((e) {
                if (e.type == EventType.question) {
                  if (e.text != null) {
                    items.add(BubbleWidget(text: e.text!));
                  }
                  final List<Widget>? list = e.nextAnswers
                      ?.map((e) => ProposalWidget(
                            id: e.id,
                            title: e.title,
                            isSelected: e.selected,
                            onSelected: (index) {
                              context.read<SupportChatBloc>().add(
                                  SupportChatEvent.onReply(index.toString()));
                            },
                          ))
                      .toList();
                  if (list != null) {
                    items.addAll(list);
                  }
                }
              });
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
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
                        child: Row(
                          children: [
                            const Text(
                              '🙂',
                              style: TextStyle(fontSize: 20),
                            ),
                            Flexible(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                onEditingComplete: () {},
                                onFieldSubmitted: (s) {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  context.read<SupportChatBloc>().add(
                                      SupportChatEvent.onReply(
                                          _textEditingController.value.text));
                                  _textEditingController.clear();
                                },
                                toolbarOptions: const ToolbarOptions(),
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder()),
                                controller: _textEditingController,
                                maxLines: 1,
                              ),
                            )),
                          ],
                        ),
                      ))
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
        color: !isSelected ? const AppColors().grey : const AppColors().green,
        shape: !isSelected
            ? const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
                bottomLeft: Radius.circular(5),
                bottomRight: Radius.circular(5),
              ))
            : const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(0),
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
