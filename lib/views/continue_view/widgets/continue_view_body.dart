import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(
              top: 20,
              left: 25,
              right: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Get your groceries\nwith nectar',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 30,
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
                const SizedBox(
                  height: 25,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or connect with social media',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff757575),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                const ContinueButton(
                  icon: 'assets/icons/google.png',
                  text: 'Continue with Google',
                  color: googleButtonColor,
                ),
                const SizedBox(
                  height: 20,
                ),
                const ContinueButton(
                  icon: 'assets/icons/facebook.png',
                  text: 'Continue with Facebook',
                  color: facebookButtonColor,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
