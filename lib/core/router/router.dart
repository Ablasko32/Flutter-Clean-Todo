import 'package:clean_todo/features/splash/screens/splash_screen.dart';
import 'package:clean_todo/features/todo/presentation/screens/todo_main_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  initialLocation: "/splash",
  routes: [
    GoRoute(path: "/splash", builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: "/home",
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const TodoMainListScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(opacity: animation, child: child),
      ),
    ),
  ],
);
