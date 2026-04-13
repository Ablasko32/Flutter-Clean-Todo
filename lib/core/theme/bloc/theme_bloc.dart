import 'package:clean_todo/core/theme/bloc/theme_event.dart';
import 'package:clean_todo/core/theme/bloc/theme_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  bool _isDark = true;

  ThemeBloc() : super(ThemeInitialState()) {
    on<ToggleThemeEvent>(_onChangeTheme);
  }

  void _onChangeTheme(ToggleThemeEvent event, Emitter<ThemeState> emit) {
    _isDark = !_isDark;

    emit(ThemeChanged(_isDark));
  }
}
