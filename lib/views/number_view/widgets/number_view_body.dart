import 'package:flutter/material.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/verification_view/verification_view.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class NumberViewBody extends StatelessWidget {
  const NumberViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Enter your mobile number',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          IntlPhoneField(
            cursorColor: primaryColor,
            style: const TextStyle(
              fontSize: 18,
            ),
            dropdownTextStyle: const TextStyle(
              fontSize: 18,
            ),
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              labelText: 'Mobile Number',
              labelStyle: TextStyle(
                fontSize: 18,
              ),
              border: OutlineInputBorder(
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
