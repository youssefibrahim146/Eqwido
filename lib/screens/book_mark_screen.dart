import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/book_mark_card.dart';

class BookMarkTab extends StatelessWidget {
  const BookMarkTab({super.key});


  @override
  Widget build(BuildContext context) {
    if (bookMarkItem.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:  const [
          Image(image: AssetImage("assets/image/not_found.png")),
          Text(
            "No bookmark items found",
            style: TextStyle(
              fontSize: 23,
              color: Color.fromARGB(255, 213, 224, 221),
            ),
          ),
        ],
      );
    } else {
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
        child: const SingleChildScrollView(
          child: BookMarCard(),
        ),
      );
    }
  }
}
