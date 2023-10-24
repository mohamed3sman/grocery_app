import 'package:flutter/material.dart';
import 'package:grocery_app/views/paid_successfully_view/widgets/paid_successfully_view_body.dart';

class PaidSuccessView extends StatelessWidget {
  const PaidSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/payment_backdround.png'),
          const PaidSuccessViewBody(),
        ],
      ),
    );
  }
}
