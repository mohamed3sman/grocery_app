import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreViewSearchContainer extends StatelessWidget {
  const ExploreViewSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        // vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search_rounded,
            size: 28,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.5,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Search Store',
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
