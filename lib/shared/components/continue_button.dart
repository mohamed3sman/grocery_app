import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton(
      {super.key, required this.icon, required this.text, required this.color});

  final String icon;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: MaterialButton(
        onPressed: () {},
        color: color,
        minWidth: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 35,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 35,
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
