import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FadeIn(child: const ProductDetailsViewBody()),
    );
  }
}
