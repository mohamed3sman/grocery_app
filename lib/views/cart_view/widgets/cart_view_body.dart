import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/custom_cart_product.dart';

class CartViewBody extends StatefulWidget {
  const CartViewBody({super.key});

  @override
  State<CartViewBody> createState() => _CartViewBodyState();
}

class _CartViewBodyState extends State<CartViewBody> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'My Cart',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.grey,
              endIndent: 0,
              height: 0.5,
              indent: 0,
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  CustomCartProduct(
                    productImage: 'assets/images/pepper.png',
                    productName: 'Bell Pepper Red',
                    productUnit: '1Kg',
                    productPrice: 1.99,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomCartProduct(
                    productImage: 'assets/images/egg.png',
                    productName: 'Egg Chicken Red',
                    productUnit: '4Pcs',
                    productPrice: 1.99,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomCartProduct(
                    productImage: 'assets/images/banana.png',
                    productName: 'Organic Bananas',
                    productUnit: '2Kg',
                    productPrice: 1.99,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Divider(
                    color: Colors.grey,
                    endIndent: 0,
                    height: 0.5,
                    indent: 0,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CustomCartProduct(
                    productImage: 'assets/images/ginger.png',
                    productName: 'Ginger',
                    productUnit: '250g',
                    productPrice: 1.99,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
