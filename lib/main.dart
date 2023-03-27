import 'package:flutter/material.dart';
import 'package:sample_app/constants/global_variables.dart';
import 'package:sample_app/features/main/screens/introduction_screen.dart';
import 'package:sample_app/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light().copyWith(
          primary: GlobalVariables.primaryColor,
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: GlobalVariables.appBarIconColor,
          ),
          color: Colors.transparent,
        ),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
      ),
      title: "Tai's Travel",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => onGenerateRoute(settings),
      home: const IntroductionScreen(),
    );
  }
}
