import 'package:flutter/material.dart';
import 'package:sample_app/features/auth/screens/login_screen.dart';
import 'package:sample_app/features/auth/screens/register_screen.dart';
import 'package:sample_app/features/main/screens/introduction_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case IntroductionScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const IntroductionScreen(),
        settings: settings,
      );
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const LoginScreen(),
        settings: settings,
      );
    case RegisterScreen.routeName:
      return MaterialPageRoute(
        builder: (_) => const RegisterScreen(),
        settings: settings,
      );
    default:
      {
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text(
                "Page does not exist",
              ),
            ),
          ),
          settings: settings,
        );
      }
  }
}
