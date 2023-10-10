import 'package:flutter/material.dart';
import 'package:grocery_app/shared/constants.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: primaryColor,
      minWidth: double.infinity,
      padding: const EdgeInsets.symmetric(
        vertical: 18,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
