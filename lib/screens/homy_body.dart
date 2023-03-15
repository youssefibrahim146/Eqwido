import 'package:flutter/material.dart';

import '../models/colors.dart';
import '../widgets/category_row.dart';
import '../widgets/item_card.dart';
import '../widgets/searc_box.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            // --------- background-------------
            image: DecorationImage(
              image: AssetImage('assets/image/finalbg.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Row(
                    children: [
                      Expanded(child: SearchBar(onChanged: (value) {})),
                      const Icon(
                        Icons.format_list_bulleted_rounded,
                        color: kSecondaryColor,
                        size: 28,
                      ),
                    ],
                  ),
                ),
                const CategoryRow(),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ItemCard(),
                ),
              ],
            ),
          ),
        );
  }
}