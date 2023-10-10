import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/default_button.dart';

class LocationViewBody extends StatelessWidget {
  const LocationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/location.png',
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Allow Your Location',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: const Text(
                textAlign: TextAlign.center,
                "Allow your location to stay in tune with what's hapenning in your area",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(
              flex: 3,
            ),
            DefaultButton(
              text: 'Allow Location',
              onPressed: () {},
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
