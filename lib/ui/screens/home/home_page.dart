import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/chat/chat_card.dart';
import 'package:help_yourself_app/ui/screens/home/home_store.dart';

import '../../../domain/entities/chat/chat.dart';

class HomePage extends BasePage<HomeViewModel> {
  HomePage({Key? key}) : super(key: key);

  @override
  AppBar? appBar(BuildContext context) => AppBar(title: Text(Strings.home.title()));

  @override
  Widget content(BuildContext context) {
    final list = List.generate(
      10,
      (index) => Chat('Global', 'Hello world', '12:00'),
    );
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimens.padding8),
            child: ListView.separated(
              itemBuilder: (ctx, i) => ChatCard(
                chat: list[i],
                onClick: (Chat chat) => {},
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
  }
}
