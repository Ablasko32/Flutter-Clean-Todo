import 'package:clean_todo/core/theme/theme_extension.dart';
import 'package:clean_todo/l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (mounted) {
        context.go("/home");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle_outline,
              size: 64,
              color: context.colors.primary,
            ),
            SizedBox(height: 16),
            Text(
              AppLocalizations.of(context)!.splashScreenMessage,
              style: context.textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}
