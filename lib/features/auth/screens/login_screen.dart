import 'package:flutter/material.dart';
import 'package:sample_app/common/custom_button.dart';
import 'package:sample_app/common/custom_textfield.dart';
import 'package:sample_app/constants/global_variables.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String routeName = "/login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Log In",
          style: TextStyle(
            color: GlobalVariables.appBarIconColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome back!\nPlease log in to continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _emailController,
                  hint: "Email",
                  icon: Icons.mail,
                  label: "Email",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomTextField(
                  controller: _passwordController,
                  hint: "Password",
                  icon: Icons.lock,
                  isPassword: true,
                  label: "Password",
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: const Text(
                    "Forgot Password ?",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onTap: () {
                    print(
                      _passwordController.text,
                    );
                  },
                  buttonName: "LOG IN",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
