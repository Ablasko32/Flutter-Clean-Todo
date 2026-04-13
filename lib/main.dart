import 'package:clean_todo/core/DI/injection.dart';
import 'package:clean_todo/core/router/router.dart';
import 'package:clean_todo/core/theme/app_theme.dart';
import 'package:clean_todo/core/theme/bloc/theme_bloc.dart';
import 'package:clean_todo/core/theme/bloc/theme_state.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_bloc.dart';
import 'package:clean_todo/features/todo/presentation/bloc/todo_events.dart';
import 'package:clean_todo/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const CleanTodo());
}

class CleanTodo extends StatelessWidget {
  const CleanTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => si<ThemeBloc>()),
        BlocProvider(create: (context) => si<TodoBloc>()..add(GetTodosEvent())),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          final isDark = state is ThemeChanged ? state.isDark : true;
          return MaterialApp.router(
            title: 'Clean Todo',
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [Locale('en', 'US')],
            debugShowCheckedModeBanner: false,
            theme: isDark ? AppTheme.darkTheme : AppTheme.lightTheme,
            routerConfig: router,
          );
        },
      ),
    );
  }
}
