import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        padding: EdgeInsets.symmetric(
          horizontal: 35.w,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 35.w,
            ),
            SizedBox(
              width: 15.h,
            ),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.5.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
