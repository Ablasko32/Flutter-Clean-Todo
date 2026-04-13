import 'package:clean_todo/core/theme/bloc/theme_bloc.dart';
import 'package:clean_todo/core/theme/bloc/theme_event.dart';
import 'package:clean_todo/core/theme/bloc/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleThemeButton extends StatelessWidget {
  const ToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        bool isDark = state is ThemeChanged ? state.isDark : true;

        return IconButton(
          onPressed: () => context.read<ThemeBloc>().add(ToggleThemeEvent()),
          icon: Icon(isDark ? Icons.light_mode : Icons.dark_mode),
        );
      },
    );
  }
}
