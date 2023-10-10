import 'package:flutter/material.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:grocery_app/views/location_view/location_view.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your 4-digit code',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          VerificationCode(
            length: 4,
            onCompleted: (String value) {},
            onEditing: (bool value) {},
            keyboardType: TextInputType.number,
            itemSize: 30,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            textStyle: const TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 30),
            cursorColor: primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 15),
            underlineWidth: 2,
            underlineColor: primaryColor,
            digitsOnly: true,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Resend Code',
                style: TextStyle(
                  fontSize: 18,
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
                child: const CircleAvatar(
                  backgroundColor: primaryColor,
                  radius: 30,
                  child: Icon(
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
