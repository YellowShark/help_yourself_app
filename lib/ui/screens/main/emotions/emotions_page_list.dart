import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/emotions_store.dart';

class EmotionsPageList extends BasePage<EmotionsViewModel> {
  EmotionsPageList({Key? key}) : super(key: key);

  @override
  AppBar? appBar(BuildContext context) => AppBar(
        title: Text(Strings.main.diary()),
      );

  @override
  Widget content(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      separatorBuilder: (_, __) => const VerticalDivider(),
      itemBuilder: (BuildContext context, int index) => const ListTile(
        title: Text('Грустная история 1'),
      ),
    );
  }

  @override
  Widget? floatingActionButton(BuildContext context) => FloatingActionButton(
        onPressed: viewModel.onCreateClick,
        child: const Icon(Icons.edit),
      );
}
