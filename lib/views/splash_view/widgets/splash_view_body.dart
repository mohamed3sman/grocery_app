import 'package:flutter/material.dart';
import 'package:grocery_app/views/onboarding_view/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  void _initializeApp() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return const OnBoardingView();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset('assets/images/logo.png'),
    );
  }
}
