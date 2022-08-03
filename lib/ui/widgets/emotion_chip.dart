import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';
import 'package:help_yourself_app/domain/entities/emotion/emotion.dart';

class EmotionChip extends StatelessWidget {
  final Emotion emotion;
  final bool selected;
  final void Function(Emotion emotion)? onClick;

  const EmotionChip({
    Key? key,
    required this.emotion,
    this.selected = false,
    this.onClick,
  }) : super(key: key);

  EdgeInsetsGeometry get _labelPadding => const EdgeInsets.symmetric(
        horizontal: Dimens.padding4,
        vertical: Dimens.padding2,
      );

  Color get _bgColor => const Color(0xFFff6666);

  Color? get _shadowColor => Colors.grey[60];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick?.call(emotion),
      child: Chip(
        padding: EdgeInsets.zero,
        labelPadding: _labelPadding,
        label: Text(
          emotion.ruWord,
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: selected ? Colors.white : Colors.black),
        ),
        backgroundColor: selected ? _bgColor : null,
        side: BorderSide(color: _bgColor),
        elevation: Dimens.smallElevation,
        shadowColor: _shadowColor,
      ),
    );
  }
}
