import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sample_app/common/custom_button.dart';
import 'package:sample_app/common/custom_date_picker.dart';
import 'package:sample_app/common/custom_textfield.dart';
import 'package:sample_app/constants/global_variables.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  static const String routeName = "/register-screen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2050),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _fullNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create Account",
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
                  "Sign up to keep exploring the amazing\ndestinations around the world",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomTextField(
                  controller: _fullNameController,
                  hint: "Full Name",
                  icon: Icons.person_rounded,
                  label: "Full Name",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _emailController,
                  hint: "Email",
                  icon: Icons.mail,
                  label: "Email",
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomDatePicker(
                  datePicker: () => _selectDate(context),
                  date: DateFormat(
                    "dd-MM-yyyy",
                  ).format(
                    selectedDate,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomTextField(
                  controller: _passwordController,
                  hint: "Password",
                  icon: Icons.lock,
                  isPassword: true,
                  label: "Password",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  onTap: () {},
                  buttonName: "LET'S GET STARTED",
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  child: RichText(
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
                            color:
                                GlobalVariables.primaryColor.withOpacity(0.6),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        const TextSpan(
                          text: ' and agree to ',
                        ),
                        TextSpan(
                          text: 'Privacy Policy.',
                          style: TextStyle(
                            color:
                                GlobalVariables.primaryColor.withOpacity(0.6),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
