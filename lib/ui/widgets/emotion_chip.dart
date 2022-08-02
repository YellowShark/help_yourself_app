import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';

class EmotionChip extends StatelessWidget {
  final Emotion emotion;
  final bool selected;
  final void Function(Emotion emotion) onClick;

  const EmotionChip({
    Key? key,
    required this.emotion,
    required this.selected,
    required this.onClick,
  }) : super(key: key);

  EdgeInsetsGeometry get _labelPadding => const EdgeInsets.symmetric(
        horizontal: Dimens.padding4,
        vertical: Dimens.padding2,
      );

  double get _elevation => 6;

  Color get _bgColor => const Color(0xFFff6666);

  Color? get _shadowColor => Colors.grey[60];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick(emotion),
      child: Chip(
        padding: EdgeInsets.zero,
        labelPadding: _labelPadding,
        label: Text(
          emotion.ruWord,
        ),
        backgroundColor: selected ? _bgColor : null,
        side: BorderSide(color: _bgColor),
        elevation: _elevation,
        shadowColor: _shadowColor,
      ),
    );
  }
}
