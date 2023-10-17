import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/custom_product_widget.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 25, right: 25),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                  ),
                ),
                const Text(
                  'Beverages',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const Icon(
                  Icons.filter_alt_outlined,
                  size: 30,
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: FadeInLeft(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/diet-coke.png',
                    productName: 'Diet Coke',
                    productPrice: '1,99',
                    unit: '355ml',
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: FadeInRight(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/sprite.png',
                    productName: 'Sprite Can',
                    productPrice: '1,50',
                    unit: '325ml',
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: FadeInLeft(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/apple-juice.png',
                    productName: 'Apple & Grape Juice',
                    productPrice: '15,99',
                    unit: '2L',
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: FadeInRight(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/orange-juice.png',
                    productName: 'Orange Juice',
                    productPrice: '15,99',
                    unit: '2L',
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                    child: FadeInLeft(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/cocakola.png',
                    productName: 'Coca Cola Can',
                    productPrice: '4,99',
                    unit: '355ml',
                  ),
                )),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: FadeInRight(
                  child: const CustomProductWidget(
                    productImage: 'assets/images/pepsi.png',
                    productName: 'Pepsi Can',
                    productPrice: '4,99',
                    unit: '330ml',
                  ),
                )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
