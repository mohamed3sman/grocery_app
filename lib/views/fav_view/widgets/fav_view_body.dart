import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/views/fav_view/widgets/custom_fav_product.dart';

class FavViewBody extends StatelessWidget {
  const FavViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Favourites',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(
              color: Colors.grey,
              endIndent: 0,
              height: 0.5,
              indent: 0,
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25),
              child: Column(
                children: [
                  CustomFavProduct(
                    productImage: 'assets/images/sprite.png',
                    productName: 'Sprite Can',
                    productSize: '325ml',
                    productPrice: 1.50,
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
                  CustomFavProduct(
                    productImage: 'assets/images/diet-coke.png',
                    productName: 'Diet Coke',
                    productSize: '355ml',
                    productPrice: 1.99,
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
                  CustomFavProduct(
                    productImage: 'assets/images/apple-juice.png',
                    productName: 'Apple & Grap Juice',
                    productSize: '2L',
                    productPrice: 15.50,
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
                  CustomFavProduct(
                    productImage: 'assets/images/cocakola.png',
                    productName: 'Coca Cola Can',
                    productSize: '325ml',
                    productPrice: 4.99,
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
                  CustomFavProduct(
                    productImage: 'assets/images/pepsi.png',
                    productName: 'Pepsi Can',
                    productSize: '330ml',
                    productPrice: 4.99,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: DefaultButton(text: 'Add All To Cart', onPressed: () {}),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
