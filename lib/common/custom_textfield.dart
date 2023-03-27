import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hint,
    this.maxLines = 1,
    required this.icon,
    this.isPassword = false,
    required this.label,
  });
  final TextEditingController controller;
  final String hint;
  final int maxLines;
  final IconData icon;
  final bool isPassword;
  final String label;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isVisible = true;
  void switchState() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: !isVisible,
      maxLines: widget.maxLines,
      controller: widget.controller,
      decoration: InputDecoration(
        labelText: widget.label,
        hintText: widget.hint,
        prefixIcon: Icon(
          widget.icon,
        ),
        suffixIcon: widget.isPassword
            ? GestureDetector(
                onTap: switchState,
                child: Icon(
                  isVisible ? Icons.visibility_off : Icons.visibility,
                ),
              )
            : const SizedBox(),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(
            8,
          ),
        ),
        fillColor: Colors.black12,
        filled: true,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Please enter your ${widget.hint}";
        }
        return null;
      },
    );
  }
}
