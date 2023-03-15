import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../models/colors.dart';
import '../models/constants.dart';

class SearchBar extends StatelessWidget {
  final ValueChanged onChanged;
  const SearchBar({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(kDefultPadding),
      padding: const EdgeInsets.symmetric(
        horizontal: kDefultPadding,
        vertical: kDefultPadding / 45,
      ),
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.4),
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(30),
          topLeft: Radius.circular(30)
        ),
      ),
      child: TextField(
        onChanged: onChanged,
        style: const TextStyle(color: kTextColor),
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColor),
          hintText: 'Search',
          hintStyle: const TextStyle(color: kTextColor),
        ),
      ),
    );
  }
}
