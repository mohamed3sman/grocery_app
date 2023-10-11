import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'widgets/signup_view_body.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomIn(child: const SignupViewBody()),
    );
  }
}
