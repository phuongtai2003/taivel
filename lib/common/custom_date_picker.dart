import 'package:flutter/material.dart';
import 'package:sample_app/constants/global_variables.dart';

class CustomDatePicker extends StatelessWidget {
  const CustomDatePicker(
      {super.key, required this.date, required this.datePicker});
  final String date;
  final VoidCallback datePicker;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: datePicker,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(8),
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 18,
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 12,
              ),
              child: const Icon(
                Icons.calendar_month,
                color: GlobalVariables.buttonAlternativeColor,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 14,
              ),
              child: Text(
                date,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
