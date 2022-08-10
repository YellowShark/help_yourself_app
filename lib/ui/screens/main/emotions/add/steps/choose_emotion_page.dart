import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion_note.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotions_category.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_store.dart';
import 'package:help_yourself_app/ui/widgets/animated_dialog.dart';
import 'package:help_yourself_app/ui/widgets/app_text_field.dart';
import 'package:help_yourself_app/ui/widgets/emotion_chip.dart';

class ChooseEmotionPage extends StatelessWidget {
  final ChooseEmotionState state;
  final EmotionNote currentNote;
  final List<Emotion> foundEmotions;
  final List<Emotion> selectedEmotions;
  final EmotionsCategory selectedCategory;
  final void Function(Emotion emotion) onEmotionSelected;
  final void Function(EmotionsCategory category) onCategorySelected;
  final void Function(String text) onSearch;

  OverlayEntry? _dialog;

  ChooseEmotionPage({
    Key? key,
    required this.state,
    required this.currentNote,
    required this.foundEmotions,
    required this.selectedCategory,
    required this.selectedEmotions,
    required this.onEmotionSelected,
    required this.onCategorySelected,
    required this.onSearch,
  }) : super(key: key);

  double get _spacing => 6.0;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          _search,
          Dimens.padding16.spacer(),
          _filters(context),
          Dimens.padding16.spacer(),
          _emotions(context),
        ],
      );

  Widget get _search => AppTextField(
        hint: Strings.addEmotion.search(),
        onChanged: onSearch,
        prefixIcon: Icons.search,
      );

  Widget _filters(BuildContext context) => Row(
        children: EmotionsCategory.values
            .map((e) => Padding(
                  padding: const EdgeInsets.only(right: Dimens.padding8),
                  child: AppChip<EmotionsCategory>(
                    value: e,
                    toText: (e) => e.text,
                    selected: e == selectedCategory,
                    onClick: onCategorySelected,
                    primaryColor: selectedCategory.color,
                  ),
                ))
            .toList(),
      );

  Widget _emotions(BuildContext context) => state == ChooseEmotionState.search
      ? foundEmotions.isNotEmpty
          ? _chipList(context, foundEmotions)
          : Text(Strings.addEmotion.nothingFound())
      : _chipList(context, selectedCategory.appropriateEmotions);

  Widget _chipList(BuildContext context, List<Emotion> emotions) => Wrap(
        spacing: _spacing,
        runSpacing: _spacing,
        children: emotions
            .map(
              (e) => AppChip<Emotion>(
                value: e,
                toText: (e) => e.text,
                onClick: onEmotionSelected,
                selected: selectedEmotions.contains(e),
                primaryColor: selectedCategory.color,
                onLongPress: (e) {
                  _dialog = _createPopupDialog(e);
                  Overlay.of(context)?.insert(_dialog!);
                },
                onLongPressEnd: (e) => _dialog?.remove(),
              ),
            )
            .toList(),
      );

  OverlayEntry _createPopupDialog(Emotion emotion) => OverlayEntry(
      builder: (context) => AnimatedDialog(
        child: _dialogContent(context, emotion),
      ),
    );

  Widget _dialogContent(BuildContext context, Emotion emotion) => Padding(
        padding: const EdgeInsets.all(Dimens.padding8),
        child: Container(
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(Dimens.borderRadius)),
          padding: const EdgeInsets.all(Dimens.padding16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                emotion.description,
                style: Theme.of(context).textTheme.bodyText1,
              )
            ],
          ),
        ),
      );
}
