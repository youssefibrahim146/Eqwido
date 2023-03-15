import 'package:auto_size_text/auto_size_text.dart';
import 'package:eqwido/models/colors.dart';
import 'package:eqwido/models/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/product.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({super.key});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: product.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 11,
          mainAxisExtent: 245,
        ),
        itemBuilder: (context, index) {
          return Container(
            //padding: const EdgeInsets.symmetric(vertical: 2),
            width: (Get.width / 2) - 10,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefultRounded),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 3, horizontal: 24),
                        decoration: const BoxDecoration(
                          color: kOrangeColor,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(20),
                            topLeft: Radius.circular(kDefultRounded),
                          ),
                        ),
                        // ------- price -------------
                        child: Text("${product.elementAt(index)['price']} EGP",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            bookMarkItem.add(product.elementAt(index));
                          });
                        },
                        child: const Icon(
                          Icons.bookmark_add,
                          size: 21,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 7),
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(28),
                    child: Image.network(
                      '${product.elementAt(index)['image']}',
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '${product.elementAt(index)['title']}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 17),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.store_rounded,
                      color: kprimaryColor,
                      size: 16,
                    ),
                    AutoSizeText(
                      '${product.elementAt(index)['seller']}',
                      maxLines: 1,
                      overflow: TextOverflow.clip,
                    ),
                  ],
                ),
                const SizedBox(height: 1),
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      padding: const EdgeInsets.symmetric(
                          vertical: 3, horizontal: 12),
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(18),
                          topLeft: Radius.circular(18),
                        ),
                      ),
                      child: const Text(
                        'Quality',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ),
                    Text('${product.elementAt(index)['quality']}'),
                    qualityCircle(index),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kOrangeColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)))),
                  child: const Text(
                    'add to basket',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          );
        });
  }
}

Widget qualityCircle(int index) {
  return Row(
    children: [
      Container(
        margin: const EdgeInsets.all(2),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: product.elementAt(index)['quality'] == 'bad'
                ? Colors.red
                : Colors.grey),
      ),
      Container(
        margin: const EdgeInsets.all(2),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: product.elementAt(index)['quality'] == 'good'
                ? kOrangeColor
                : Colors.grey),
      ),
      Container(
        margin: const EdgeInsets.all(2),
        width: 10,
        height: 10,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: product.elementAt(index)['quality'] == 'Excellent'
                ? Colors.green
                : Colors.grey),
      ),
    ],
  );
}
