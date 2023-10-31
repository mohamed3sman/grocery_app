import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/verification_view/verification_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberViewBody extends StatelessWidget {
  const NumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22.w, right: 22.w, top: 30, bottom: 25.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Enter your mobile number',
            style: TextStyle(
              fontSize: 19.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          IntlPhoneField(
            cursorColor: primaryColor,
            style: TextStyle(
              fontSize: 16.sp,
            ),
            dropdownTextStyle: TextStyle(
              fontSize: 16.sp,
            ),
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: 'Mobile Number',
              labelStyle: TextStyle(
                fontSize: 16.sp,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide(),
              ),
            ),
            initialCountryCode: 'EG',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const VerificationView();
                  }));
                },
                child: CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 28.r,
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
