import 'package:clean_todo/core/theme/color_tokens.dart';
import 'package:flutter/material.dart';

extension ThemeExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;
  ColorScheme get colors => Theme.of(this).colorScheme;
}

extension AppColors on BuildContext {
  Color get success => brightness == Brightness.dark
      ? DarkColorTokens.success
      : LightColorTokens.success;
  Color get onSuccess => brightness == Brightness.dark
      ? DarkColorTokens.onSuccess
      : LightColorTokens.onSuccess;

  Color get warning => brightness == Brightness.dark
      ? DarkColorTokens.warning
      : LightColorTokens.warning;
  Color get onWarning => brightness == Brightness.dark
      ? DarkColorTokens.onWarning
      : LightColorTokens.onWarning;

  Brightness get brightness => Theme.of(this).brightness;
}
