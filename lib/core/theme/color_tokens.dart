import 'package:flutter/material.dart';

abstract class DarkColorTokens {
  // Primary set
  static const Color background = Color(0xFF121212);
  static const Color surface = Color(0xFF1E1E1E);
  static const Color surfaceVariant = Color(0xFF2A2A2A);
  static const Color primary = Color(0xFF6C63FF);
  static const Color secondary = Color(0xFF03DAC6);

  // On colors
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFF000000);
  static const Color onSurface = Color(0xFFE0E0E0);
  static const Color onBackground = Color(0xFFE0E0E0);

  // Support
  static const Color success = Color(0xFF4CAF50);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color warning = Color(0xFFFF9800);
  static const Color onWarning = Color(0xFF000000);
  static const Color error = Color(0xFFCF6679);
  static const Color onError = Color(0xFFFFFFFF);

  // Extra
  static const Color muted = Color(0xFF757575);
  static const Color border = Color(0xFF2C2C2C);
}

//Light theme
abstract class LightColorTokens {
  // Primary set
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFEEEEEE);
  static const Color primary = Color(0xFF6C63FF);
  static const Color secondary = Color(0xFF03DAC6);

  // On colors
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color onSecondary = Color(0xFF000000);
  static const Color onSurface = Color(0xFF1A1A1A);
  static const Color onBackground = Color(0xFF1A1A1A);

  // Support
  static const Color success = Color(0xFF4CAF50);
  static const Color onSuccess = Color(0xFFFFFFFF);
  static const Color warning = Color(0xFFFF9800);
  static const Color onWarning = Color(0xFF000000);
  static const Color error = Color(0xFFB00020);
  static const Color onError = Color(0xFFFFFFFF);

  // Extra
  static const Color muted = Color(0xFF9E9E9E);
  static const Color border = Color(0xFFE0E0E0);
}
