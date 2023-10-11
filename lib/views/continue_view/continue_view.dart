import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/continue_view_body.dart';

class ContinueView extends StatelessWidget {
  const ContinueView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(
          animate: true,
          duration: const Duration(milliseconds: 1000),
          child: const ContinueViewBody()),
    );
  }
}
