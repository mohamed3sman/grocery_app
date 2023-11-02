import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsContainer extends StatelessWidget {
  const ProductsContainer(
      {super.key,
      required this.productIcon,
      required this.productName,
      required this.containerColor,
      required this.containerBorderColor});

  final String productIcon;
  final String productName;
  final Color containerColor;
  final Color containerBorderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170.h,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: containerBorderColor,
            width: 1.5,
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(productIcon),
          SizedBox(
            height: 20.h,
          ),
          Text(
            textAlign: TextAlign.center,
            productName,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
