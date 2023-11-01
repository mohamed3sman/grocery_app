import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_app/shared/constants.dart';

class CustomProductWidget extends StatelessWidget {
  const CustomProductWidget(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.unit});

  final String productImage;
  final String productName;
  final String productPrice;
  final String unit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 250,
      padding: const EdgeInsets.only(
        top: 30,
        left: 15,
        right: 15,
        bottom: 15,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 0.3,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              productImage,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '$unit, Price',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$$productPrice',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                    child: MaterialButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: primaryColor,
                      child: Icon(
                        Icons.add,
                        size: 18.r,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
