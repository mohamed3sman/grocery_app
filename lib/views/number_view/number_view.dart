import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/number_view_body.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
      ),
      body: FadeIn(
        animate: true,
        duration: const Duration(milliseconds: 1000),
        child: const NumberViewBody(),
      ),
    );
  }
}
