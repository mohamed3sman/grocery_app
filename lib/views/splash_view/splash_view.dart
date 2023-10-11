import 'package:flutter/material.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/splash_view/widgets/splash_view_body.dart';
import 'package:animate_do/animate_do.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ZoomIn(child: const SplashViewBody()),
    );
  }
}
