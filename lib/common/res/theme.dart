import 'package:flutter/material.dart';
import 'package:help_yourself_app/common/res/dimens.dart';

abstract class AppTheme {
  static final lightTheme = ThemeData(
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(Dimens.buttonHeight),
      ),
    ),
    cardTheme: CardTheme(
      elevation: Dimens.smallElevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.borderRadius),
      ),
    ),
  );

  // TODO determine dark theme
  static final darkTheme = ThemeData();
}
