import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomCartProduct extends StatefulWidget {
  const CustomCartProduct({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productUnit,
    required this.productPrice,
  });

  final String productImage;
  final String productName;
  final String productUnit;
  final double productPrice;

  @override
  State<CustomCartProduct> createState() => _CustomCartProductState();
}

class _CustomCartProductState extends State<CustomCartProduct> {
  int counter = 1;
  double? price;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Image.asset(widget.productImage),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.productName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            const Icon(Icons.close_rounded),
          ],
        ),
        subtitle:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              '${widget.productUnit}, Price',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
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
                        counter > 1 ? counter-- : counter = 1;
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.minimize_rounded,
                        size: 30,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    '$counter',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      counter++;
                      setState(() {});
                    },
                    child: const Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
              Text(
                '\$${widget.productPrice * counter}',
                style: const TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
