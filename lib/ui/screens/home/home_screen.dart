import 'package:cloud_chat/common/res/dimens.dart';
import 'package:cloud_chat/common/res/strings.dart';
import 'package:cloud_chat/common/routes/routes.dart';
import 'package:cloud_chat/ui/screens/home/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../domain/entities/chat/chat.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.home.title),
      ),
      body: Observer(builder: (_) {
        final list = List.generate(10, (index) => Chat('Global', 'Hello world', '12:00'),);
        return Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Dimens.padding8),
                child: ListView.separated(
                  itemBuilder: (ctx, i) => ChatCard(
                    chat: list[i],
                    onClick: (Chat chat) => Navigator.pushNamed(ctx, Routes.chatDetails, arguments: chat),
                  ),
                  separatorBuilder: (ctx, i) => const Divider(
                    color: Colors.deepOrange,
                    thickness: 1,
                  ),
                  itemCount: list.length,
                ),
              ),
            ),
          ],
        );
      }),
    );
  }
}
