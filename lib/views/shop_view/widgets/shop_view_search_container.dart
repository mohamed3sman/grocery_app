import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopViewSearchContainer extends StatelessWidget {
  const ShopViewSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        // vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            size: 26.sp,
          ),
          SizedBox(
            width: 250.w,
            height: 50.h,
            child: TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
