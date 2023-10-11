import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/shop_view_body.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(child: const ShopViewBody()),
    );
  }
}
