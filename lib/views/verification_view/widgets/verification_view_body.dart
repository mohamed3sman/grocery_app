import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:grocery_app/views/location_view/location_view.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: 22.w, right: 22.w, top: 25.h, bottom: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter your 4-digit code',
            style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          VerificationCode(
            length: 4,
            onCompleted: (String value) {},
            onEditing: (bool value) {},
            keyboardType: TextInputType.number,
            itemSize: 26.w,
            margin: EdgeInsets.symmetric(horizontal: 5.w),
            textStyle: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 30),
            cursorColor: primaryColor,
            padding: EdgeInsets.symmetric(vertical: 10.h),
            underlineWidth: 2,
            underlineColor: primaryColor,
            digitsOnly: true,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Resend Code',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LocationView();
                  }));
                },
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 27.r,
                  child: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
