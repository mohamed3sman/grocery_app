import 'package:flutter/material.dart';

import 'widgets/continue_view_body.dart';

class ContinueView extends StatelessWidget {
  const ContinueView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ContinueViewBody(),
    );
  }
}
