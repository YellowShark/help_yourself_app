import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotions_category.dart';
import 'package:help_yourself_app/ui/screens/main/emotions/add/add_emotion_store.dart';
import 'package:help_yourself_app/ui/widgets/app_text_field.dart';
import 'package:help_yourself_app/ui/widgets/emotion_chip.dart';

class ChooseEmotionPage extends StatelessWidget {
  final ChooseEmotionState state;
  final List<Emotion> selectedEmotions;
  final List<Emotion> foundEmotions;
  final EmotionsCategory selectedCategory;
  final void Function(Emotion emotion) onEmotionSelected;
  final void Function(EmotionsCategory category) onCategorySelected;
  final void Function(String text) onSearch;

  const ChooseEmotionPage({
    Key? key,
    required this.state,
    required this.selectedEmotions,
    required this.foundEmotions,
    required this.selectedCategory,
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
          _emotions,
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
                    primaryColor: Theme.of(context).primaryColor,
                  ),
                ))
            .toList(),
      );

  Widget get _emotions => state == ChooseEmotionState.search
      ? foundEmotions.isNotEmpty
          ? _chipList(foundEmotions)
          : Text(Strings.addEmotion.nothingFound())
      : _chipList(selectedCategory.appropriateEmotions);

  Widget _chipList(List<Emotion> emotions) => Wrap(
        spacing: _spacing,
        runSpacing: _spacing,
        children: emotions
            .map(
              (e) => AppChip<Emotion>(
                value: e,
                toText: (e) => e.text,
                onClick: onEmotionSelected,
                selected: selectedEmotions.contains(e),
              ),
            )
            .toList(),
      );
}
