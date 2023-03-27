import "package:flutter/material.dart";
import 'package:sample_app/common/custom_button.dart';
import 'package:sample_app/constants/global_variables.dart';
import 'package:sample_app/features/auth/screens/login_screen.dart';
import 'package:sample_app/features/auth/screens/register_screen.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});
  static const String routeName = '/introduction-screen';

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  void navigateToLogin() {
    Navigator.pushNamed(
      context,
      LoginScreen.routeName,
    );
  }

  void navigateToRegister() {
    Navigator.pushNamed(
      context,
      RegisterScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Image.asset(
                    "assets/images/logo1.png",
                    width: 80,
                    height: 80,
                  ),
                ),
                const Text(
                  "Taivel",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Search less,\ntravel more!",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              "Great exprerience at backpacker prices.",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onTap: navigateToRegister,
              buttonName: "CREATE AN ACCOUNT",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: navigateToLogin,
              buttonName: "LOG IN",
              buttonColor: Colors.white,
            ),
            const SizedBox(
              height: 50,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By creating an account, you agree to our\n',
                style: TextStyle(
                  color: Colors.black.withOpacity(
                    0.55,
                  ),
                ),
                children: [
                  TextSpan(
                    text: 'Terms & Conditions',
                    style: TextStyle(
                      color: GlobalVariables.primaryColor.withOpacity(0.6),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const TextSpan(
                    text: ' and agree to ',
                  ),
                  TextSpan(
                    text: 'Privacy Policy.',
                    style: TextStyle(
                      color: GlobalVariables.primaryColor.withOpacity(0.6),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
