import 'package:flutter/material.dart';

class CheckoutBottomSheetContainer extends StatelessWidget {
  const CheckoutBottomSheetContainer(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w700,
              color: Colors.black.withOpacity(0.6)),
        ),
        Row(
          children: [
            Text(
              subTitle,
              style: const TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
            ),
          ],
        ),
      ],
    );
  }
}
