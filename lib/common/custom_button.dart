import 'package:flutter/material.dart';
import 'package:sample_app/constants/global_variables.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onTap,
    required this.buttonName,
    this.buttonColor = GlobalVariables.primaryColor,
  });
  final VoidCallback onTap;
  final String buttonName;
  final Color buttonColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
          side: BorderSide(
            width: buttonColor != GlobalVariables.primaryColor ? 0.5 : 0,
          ),
        ),
        minimumSize: const Size(
          double.infinity,
          50,
        ),
        backgroundColor: buttonColor,
      ),
      onPressed: onTap,
      child: Text(
        buttonName,
        style: TextStyle(
          color: buttonColor != GlobalVariables.primaryColor
              ? GlobalVariables.buttonAlternativeColor
              : Colors.white,
        ),
      ),
    );
  }
}
