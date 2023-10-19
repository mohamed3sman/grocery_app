import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustomFavProduct extends StatelessWidget {
  const CustomFavProduct(
      {super.key,
      required this.productImage,
      required this.productName,
      required this.productSize,
      required this.productPrice});

  final String productImage;
  final String productName;
  final String productSize;
  final double productPrice;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(
            productImage,
            width: 50,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(productName,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '$productSize, Price',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  '\$$productPrice',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 18,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
