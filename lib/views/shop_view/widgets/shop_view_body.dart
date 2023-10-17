import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/shared/components/custom_product_widget.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/product_details_view/product_details_view.dart';

import 'shop_view_search_container.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
          child: Column(
            children: [
              Image.asset(
                'assets/images/red-carrot.png',
                width: 35,
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    size: 28,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const ShopViewSearchContainer(),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/banner.png'),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 17,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: FadeInLeft(
                    child: const CustomProductWidget(
                      productImage: 'assets/images/banana.png',
                      productName: 'Organic Bananas',
                      productPrice: '4,99',
                      unit: '1kg',
                    ),
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: FadeInRight(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const ProductDetailsView();
                        }));
                      },
                      child: const CustomProductWidget(
                        productImage: 'assets/images/apple.png',
                        productName: 'Red Apple',
                        productPrice: '5,33',
                        unit: '1kg',
                      ),
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 17,
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: FadeInLeft(
                    child: const CustomProductWidget(
                      productImage: 'assets/images/beef.png',
                      productName: 'Beef Bone',
                      productPrice: '11,77',
                      unit: '1kg',
                    ),
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: FadeInRight(
                    child: const CustomProductWidget(
                      productImage: 'assets/images/chicken.png',
                      productName: 'Broiler Chicken',
                      productPrice: '9,55',
                      unit: '1kg',
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: FadeInLeft(
                    child: const CustomProductWidget(
                      productImage: 'assets/images/felfel.png',
                      productName: 'Pepper',
                      productPrice: '3,65',
                      unit: '1kg',
                    ),
                  )),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: FadeInRight(
                    child: const CustomProductWidget(
                      productImage: 'assets/images/gwafa.png',
                      productName: 'Guava',
                      productPrice: '3,55',
                      unit: '1kg',
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
