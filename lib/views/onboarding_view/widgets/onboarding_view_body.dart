import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/views/continue_view/continue_view.dart';

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
            padding: const EdgeInsets.only(bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/carrot.png',
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Welcome\nto our store',
                  style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  textAlign: TextAlign.center,
                  'Get your groceries in as fast as one hour',
                  style: GoogleFonts.inter(
                    color: Colors.grey,
                    fontSize: 15,
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
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
