import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/ui/base/base_page.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/emotions_store.dart';
import 'package:help_yourself_app/ui/widgets/emotion_note_card.dart';

class EmotionsPageList extends BasePage<EmotionsViewModel> {
  EmotionsPageList({Key? key}) : super(key: key);

  @override
  void onCreate() {
    super.onCreate();
    viewModel.updateNotes();
  }

  @override
  AppBar? appBar(BuildContext context) => AppBar(
        title: Text(Strings.main.diary()),
        actions: [
          IconButton(onPressed: viewModel.onShare, icon: const Icon(Icons.share)),
        ],
      );

  @override
  Widget content(BuildContext context) {
    viewModel.updateNotes();
    return Observer(
      builder: (_) => ListView.separated(
        itemCount: viewModel.notes.length,
        separatorBuilder: (_, __) => const VerticalDivider(),
        itemBuilder: (BuildContext context, int index) => EmotionNoteCard(
          note: viewModel.notes[index],
          onClick: viewModel.onEditClick,
        ),
      ),
    );
  }

  @override
  Widget? floatingActionButton(BuildContext context) => FloatingActionButton(
        onPressed: viewModel.onCreateClick,
        child: const Icon(Icons.edit),
      );
}
