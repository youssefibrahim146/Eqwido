import 'package:flutter/material.dart';

import '../models/colors.dart';
import '../models/constants.dart';


class CategoryRow extends StatefulWidget {
  const CategoryRow({super.key});

  @override
  State<CategoryRow> createState() => _CategoryRowState();
}

class _CategoryRowState extends State<CategoryRow> {
  int selectedIndex = 0;
  List categories = ["All", "Furneture", "Cars", 'bikes','electronics','Mobile phone'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefultPadding / 2),
      height: 30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: kDefultPadding,
              right: index == categories.length - 1 ? kDefultPadding : 0,
            ),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: index == selectedIndex
                  ? Colors.white.withOpacity(0.4)
                  : Colors.transparent,
            ),
            child: Text(categories[index],
                style: const TextStyle(color: kTextColor, fontSize: 15)),
          ),
        ),
      ),
    );
  }
}
