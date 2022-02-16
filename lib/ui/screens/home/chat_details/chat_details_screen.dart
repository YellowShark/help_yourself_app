import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/res/strings.dart';
import 'package:cloud_chat/domain/entities/message/message.dart';
import 'package:cloud_chat/ui/screens/home/chat_details/message_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../domain/entities/chat/chat.dart';

class ChatDetailsScreen extends StatelessWidget {
  final messageController = TextEditingController();
  final messageFocus = FocusNode();

  ChatDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _initScreen(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.chatDetails.title),
      ),
      body: Column(
        children: [
          Observer(
            builder: (_) {
              final list = List.generate(5, (i) => Message('Dan', 'Hello world!', '12:00', i % 2 == 0));
              return Expanded(
                flex: 6,
                child: ListView.builder(
                  itemBuilder: (ctx, i) => MessageBubble(message: list[i]),
                  itemCount: list.length,
                ),
              );
            },
          ),
          Expanded(
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Flexible(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(Dimens.padding8),
                    child: TextField(
                      controller: messageController,
                      focusNode: messageFocus,
                      decoration: InputDecoration(
                          hintText: Strings.chatDetails.messageHint, contentPadding: const EdgeInsets.all(Dimens.padding8)),
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(Dimens.padding8),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                          const CircleBorder()
                        )
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: Dimens.padding4),
                          child: Icon(Icons.send),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _initScreen(BuildContext context) {
    final chat = ModalRoute.of(context)?.settings.arguments as Chat?;
    // TODO pass the value to a ViewModel.
  }
}
