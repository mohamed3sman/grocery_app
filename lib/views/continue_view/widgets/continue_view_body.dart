import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/shared/components/continue_button.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/number_view/number_view.dart';

class ContinueViewBody extends StatelessWidget {
  const ContinueViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/login-image.png'),
          Padding(
            padding: EdgeInsets.only(
              top: 15.h,
              left: 20.w,
              right: 20.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Get your groceries\nwith nectar',
                  style: TextStyle(
                    fontSize: 19.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 25.h,
                ),
                DefaultButton(
                  text: 'Continue with Mobile number',
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const NumberView();
                    }));
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or connect with social media',
                      style: TextStyle(
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff757575),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const ContinueButton(
                  icon: 'assets/icons/google.png',
                  text: 'Continue with Google',
                  color: googleButtonColor,
                ),
                SizedBox(
                  height: 15.h,
                ),
                const ContinueButton(
                  icon: 'assets/icons/facebook.png',
                  text: 'Continue with Facebook',
                  color: facebookButtonColor,
                ),
                SizedBox(
                  height: 15.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
