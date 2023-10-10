import 'package:flutter/material.dart';

import 'widgets/number_view_body.dart';

class NumberView extends StatelessWidget {
  const NumberView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios_new_rounded,
            )),
      ),
      body: const NumberViewBody(),
    );
  }
}
