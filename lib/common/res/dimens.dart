import 'package:flutter/material.dart';

abstract class Dimens {
  static const zero = 0.0;

  static const padding2 = 2.0;
  static const padding4 = 4.0;
  static const padding8 = 8.0;
  static const padding16 = 16.0;
  static const padding24 = 24.0;
  static const padding32 = 32.0;
  static const padding40 = 40.0;
  static const padding64 = 40.0;

  static const extraLargeFontSize = 40.0;
  static const normalFontSize = 16.0;

  static const buttonHeight = 48.0;

  static const smallElevation = 6.0;

  static const borderRadius = 16.0;
}

extension DimensExt on double {
  Widget spacer() => SizedBox(height: this);

  Widget horizontalSpacer() => SizedBox(width: this);
}
