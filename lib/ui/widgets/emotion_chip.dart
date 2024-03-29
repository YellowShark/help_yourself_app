import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/colors.dart';
import 'package:help_yourself_app/common/res/dimens.dart';

class AppChip<T> extends StatelessWidget {
  final T value;
  final bool selected;
  final void Function(T value)? onClick;
  final void Function(T value)? onLongPress;
  final void Function(T value)? onLongPressEnd;
  final String Function(T value) toText;
  final Color? primaryColor;
  final Color? secondaryColor;

  const AppChip({
    Key? key,
    required this.value,
    required this.toText,
    this.selected = false,
    this.primaryColor,
    this.secondaryColor,
    this.onClick,
    this.onLongPress,
    this.onLongPressEnd,
  }) : super(key: key);

  EdgeInsetsGeometry get _labelPadding => const EdgeInsets.symmetric(
        horizontal: Dimens.padding4,
        vertical: Dimens.padding2,
      );

  Color? get _shadowColor => Colors.grey[60];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick?.call(value),
      onLongPress: () => onLongPress?.call(value),
      onLongPressEnd: (d) => onLongPressEnd?.call(value),
      child: Chip(
        padding: EdgeInsets.zero,
        labelPadding: _labelPadding,
        label: Text(
          toText(value),
          style: Theme.of(context).textTheme.subtitle2?.copyWith(color: selected ? Colors.white : Colors.black),
        ),
        backgroundColor: selected ? primaryColor : secondaryColor,
        side: BorderSide(color: primaryColor ?? AppColors.softPink),
        elevation: Dimens.smallElevation,
        shadowColor: _shadowColor,
      ),
    );
  }
}
