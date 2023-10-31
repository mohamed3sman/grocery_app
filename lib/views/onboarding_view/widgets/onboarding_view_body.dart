import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/views/continue_view/continue_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/man.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.07),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/carrot.png',
                ),
                SizedBox(
                  height: 30.h,
                ),
                SizedBox(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Welcome\nto our store',
                    style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 36.sp,
                      fontWeight: FontWeight.w600,
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6.h,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Text(
                    textAlign: TextAlign.center,
                    'Get your groceries in as fast as one hour',
                    style: GoogleFonts.inter(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: DefaultButton(
                    text: 'Get Started',
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const ContinueView();
                      }));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
