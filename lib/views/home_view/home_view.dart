import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/shared/constants.dart';
import 'package:grocery_app/views/account_view/account_view.dart';
import 'package:grocery_app/views/cart_view/cart_view.dart';
import 'package:grocery_app/views/fav_view/fav_view.dart';
import 'package:grocery_app/views/shop_view/shop_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int pageIndex = 0;

  final pages = [
    const ShopView(),
    const CartView(),
    const FavView(),
    const AccountView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeIn(child: pages[pageIndex]),
        bottomNavigationBar: buildMyNavBar(context));
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 75,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                icon: pageIndex == 0
                    ? const Icon(
                        Icons.shopping_bag_rounded,
                        color: primaryColor,
                        size: 35,
                      )
                    : const Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              const Text(
                'Shop',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                icon: pageIndex == 1
                    ? const Icon(
                        Icons.shopping_cart,
                        color: primaryColor,
                        size: 35,
                      )
                    : const Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              const Text(
                'Cart',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                icon: pageIndex == 2
                    ? const Icon(
                        Icons.favorite,
                        color: primaryColor,
                        size: 35,
                      )
                    : const Icon(
                        Icons.favorite_border,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              const Text(
                'Favourite',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.person_3_rounded,
                        color: primaryColor,
                        size: 35,
                      )
                    : const Icon(
                        Icons.person_3_outlined,
                        color: Colors.black,
                        size: 35,
                      ),
              ),
              const Text(
                'Account',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
