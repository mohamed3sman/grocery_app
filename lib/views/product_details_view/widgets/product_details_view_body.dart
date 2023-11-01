import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/shared/components/default_button.dart';
import 'package:grocery_app/shared/constants.dart';

class ProductDetailsViewBody extends StatefulWidget {
  const ProductDetailsViewBody({super.key});

  @override
  State<ProductDetailsViewBody> createState() => _ProductDetailsViewBodyState();
}

int counter = 1;

class _ProductDetailsViewBodyState extends State<ProductDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    color: productDetailsBackgroundColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    )),
                height: MediaQuery.of(context).size.height * 0.42,
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.h, left: 15.w, right: 15.w),
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
                        Image.asset(
                          'assets/icons/share-icon.png',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    FadeInLeft(
                      duration: const Duration(
                        milliseconds: 1500,
                      ),
                      child: Image.asset(
                        'assets/images/p-apple.png',
                        width: MediaQuery.of(context).size.height * 0.37,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 15.w, right: 15.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Natural Red Apple',
                          style: TextStyle(
                            fontSize: 19.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '1Kg, priceg',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.grey[600],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite_border_rounded,
                      size: 30.r,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 18),
                          child: GestureDetector(
                            onTap: () {
                              counter--;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.minimize_rounded,
                              size: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        Text(
                          '$counter',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          width: 25.w,
                        ),
                        GestureDetector(
                          onTap: () {
                            counter++;
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.add,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '\$4,99',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Product details',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      size: 30,
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Apple are nutritious, Apple may be good for weight loss, Apple mat be good for you heart, As part of a healthful and varried Diet.',
                  style: TextStyle(
                    fontSize: 11.5.sp,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nutritions',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                          color: productDetailsBackgroundColor,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      child: Text(
                        '100%',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Reviews',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '4.8',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Icon(
                          Icons.star_rate_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                DefaultButton(
                  text: 'Add To Basket',
                  onPressed: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
