import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          padding: EdgeInsets.only(top: 45.h, left: 15.w, right: 15.w),
          child: Column(
            children: [
              Image.asset(
                'assets/images/red-carrot.png',
                width: 30.w,
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    size: 25.r,
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Text(
                    'Dhaka, Banassre',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              const ShopViewSearchContainer(),
              SizedBox(
                height: 15.h,
              ),
              Image.asset(
                'assets/images/banner.png',
                width: double.infinity,
              ),
              SizedBox(
                height: 25.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.sp,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 19.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15.sp,
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
