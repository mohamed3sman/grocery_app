import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/views/explore_view/widgets/explore_view_search_container.dart';
import 'package:grocery_app/views/explore_view/widgets/products_container.dart';
import 'package:grocery_app/views/product_view/product_view.dart';

class ExploreViewBody extends StatelessWidget {
  const ExploreViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 70, left: 25, right: 25),
        child: Column(children: [
          const Text(
            'Find Products',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ExploreViewSearchContainer(),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: const ProductsContainer(
                    productIcon: 'assets/icons/fruits-icon.png',
                    productName: 'Fresh Fruits & Vegetables',
                    containerColor: Color(0xffeef7f1),
                    containerBorderColor: Color(0xff82c69a),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: FadeInRight(
                  child: const ProductsContainer(
                    productIcon: 'assets/icons/oil-icon.png',
                    productName: 'Cooking Oil & Ghee',
                    containerColor: Color(0xfffef6ed),
                    containerBorderColor: Color(0xfffabd7c),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: const ProductsContainer(
                    productIcon: 'assets/icons/meat-icon.png',
                    productName: 'Meat & Fish',
                    containerColor: Color(0xfffef6ed),
                    containerBorderColor: Color(0xfff7a593),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: FadeInRight(
                  child: const ProductsContainer(
                    productIcon: 'assets/icons/bakery-icon.png',
                    productName: 'Bakery & Snacks',
                    containerColor: Color(0xfff4ebf7),
                    containerBorderColor: Color(0xffd3b0e0),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              Expanded(
                child: FadeInLeft(
                  child: const ProductsContainer(
                    productIcon: 'assets/icons/eggs-icon.png',
                    productName: 'Dairy & Eggs',
                    containerColor: Color(0xfffff8e5),
                    containerBorderColor: Color(0xfffde598),
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Expanded(
                child: FadeInRight(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ProductView();
                      }));
                    },
                    child: const ProductsContainer(
                      productIcon: 'assets/icons/baverages-icon.png',
                      productName: 'Beverages',
                      containerColor: Color(0xffedf7fc),
                      containerBorderColor: Color(0xffb7dff5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ]),
      ),
    ));
  }
}
