import 'package:flutter/material.dart';

class ExploreViewSearchContainer extends StatelessWidget {
  const ExploreViewSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        // vertical: 15,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const Row(
        children: [
          Icon(
            Icons.search_rounded,
            size: 28,
          ),
          SizedBox(
            width: 250,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  hintText: 'Search Store',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
