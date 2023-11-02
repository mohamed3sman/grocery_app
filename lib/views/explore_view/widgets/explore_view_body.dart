import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          Text(
            'Find Products',
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const ExploreViewSearchContainer(),
          SizedBox(
            height: 15.h,
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
              SizedBox(
                width: 10.w,
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
          SizedBox(
            height: 10.h,
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
              SizedBox(
                width: 10.w,
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
          SizedBox(
            height: 10.h,
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
              SizedBox(
                width: 10.w,
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
          SizedBox(
            height: 10.h,
          ),
        ]),
      ),
    ));
  }
}
