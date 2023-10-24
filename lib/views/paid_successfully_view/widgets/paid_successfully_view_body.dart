import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/default_button.dart';

class PaidSuccessViewBody extends StatelessWidget {
  const PaidSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50, bottom: 50),
              child: Image.asset(
                'assets/images/paid_successfully.png',
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                textAlign: TextAlign.center,
                'Your Order has been accepted',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: const Text(
                textAlign: TextAlign.center,
                'Your items has been placed and is on it\'s way to be processed',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 100, bottom: 30, left: 25, right: 25),
              child: DefaultButton(text: 'Track Order', onPressed: () {}),
            ),
            const Text(
              'Back to home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
