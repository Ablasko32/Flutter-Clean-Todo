import 'package:freezed_annotation/freezed_annotation.dart';

part "theme_state.freezed.dart";

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState.initial() = ThemeInitialState;
  const factory ThemeState.changed(bool isDark) = ThemeChanged;
}
