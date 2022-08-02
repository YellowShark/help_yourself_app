import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/common/res/strings.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';
import 'package:help_yourself_app/ui/widgets/app_text_field.dart';
import 'package:help_yourself_app/ui/widgets/emotion_chip.dart';

class ChooseEmotionPage extends StatelessWidget {
  final List<Emotion> emotions;
  final List<Emotion> selectedEmotions;
  final void Function(Emotion emotion) onEmotionSelected;
  final void Function(String text) onSearch;

  const ChooseEmotionPage({
    Key? key,
    required this.emotions,
    required this.selectedEmotions,
    required this.onEmotionSelected,
    required this.onSearch,
  }) : super(key: key);

  double get _spacing => 6.0;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          _search,
          Dimens.padding16.spacer(),
          _chipList,
        ],
      );

  Widget get _search => AppTextField(
        hint: Strings.addEmotion.search(),
        onChanged: onSearch,
        prefixIcon: Icons.search,
      );

  Widget get _chipList => Wrap(
        spacing: _spacing,
        runSpacing: _spacing,
        children: emotions
            .map(
              (e) => EmotionChip(
                emotion: e,
                onClick: onEmotionSelected,
                selected: selectedEmotions.contains(e),
              ),
            )
            .toList(),
      );
}
