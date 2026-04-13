import 'package:clean_todo/core/theme/color_tokens.dart';
import 'package:clean_todo/core/theme/typography_tokens.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: LightColorTokens.primary,
      onPrimary: LightColorTokens.onPrimary,
      secondary: LightColorTokens.secondary,
      onSecondary: LightColorTokens.onSecondary,
      error: LightColorTokens.error,
      onError: LightColorTokens.onError,
      surface: LightColorTokens.surface,
      onSurface: LightColorTokens.onSurface,
    ),
    scaffoldBackgroundColor: LightColorTokens.background,
    textTheme: TypographyTokens.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: LightColorTokens.surface,
      titleTextStyle: TypographyTokens.headingMd.copyWith(
        color: LightColorTokens.onSurface,
      ),
    ),
    // Input polja
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: LightColorTokens.surfaceVariant,
      labelStyle: TypographyTokens.labelMd.copyWith(
        color: LightColorTokens.muted,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: LightColorTokens.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: LightColorTokens.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: LightColorTokens.primary),
      ),
    ),

    // Gumbi
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: LightColorTokens.primary,
        foregroundColor: LightColorTokens.onPrimary,
        textStyle: TypographyTokens.labelLg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),

    // Bottom sheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: LightColorTokens.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    ),

    // Dialog
    dialogTheme: DialogThemeData(
      backgroundColor: LightColorTokens.surface,
      titleTextStyle: TypographyTokens.titleLg.copyWith(
        color: LightColorTokens.onSurface,
      ),
      contentTextStyle: TypographyTokens.bodyMd.copyWith(
        color: LightColorTokens.muted,
      ),
    ),
  );

  static ThemeData get darkTheme => ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: DarkColorTokens.primary,
      onPrimary: DarkColorTokens.onPrimary,
      secondary: DarkColorTokens.secondary,
      onSecondary: DarkColorTokens.onSecondary,
      error: DarkColorTokens.error,
      onError: DarkColorTokens.onError,
      surface: DarkColorTokens.surface,
      onSurface: DarkColorTokens.onSurface,
    ),
    scaffoldBackgroundColor: DarkColorTokens.background,
    textTheme: TypographyTokens.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: DarkColorTokens.surface,
      titleTextStyle: TypographyTokens.headingMd.copyWith(
        color: DarkColorTokens.onSurface,
      ),
    ),
    // Input polja
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: DarkColorTokens.surfaceVariant,
      labelStyle: TypographyTokens.labelMd.copyWith(
        color: DarkColorTokens.muted,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: DarkColorTokens.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: DarkColorTokens.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: DarkColorTokens.primary),
      ),
    ),

    // Gumbi
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: DarkColorTokens.primary,
        foregroundColor: DarkColorTokens.onPrimary,
        textStyle: TypographyTokens.labelLg,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      ),
    ),

    // Bottom sheet
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: DarkColorTokens.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
    ),

    // Dialog
    dialogTheme: DialogThemeData(
      backgroundColor: DarkColorTokens.surface,
      titleTextStyle: TypographyTokens.titleLg.copyWith(
        color: DarkColorTokens.onSurface,
      ),
      contentTextStyle: TypographyTokens.bodyMd.copyWith(
        color: DarkColorTokens.muted,
      ),
    ),
  );
}
