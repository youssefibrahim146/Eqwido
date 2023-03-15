import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/colors.dart';
import '../models/product.dart';
import 'item_card.dart';

class BookMarCard extends StatefulWidget {
  const BookMarCard({super.key});

  @override
  State<BookMarCard> createState() => _BookMarCardState();
}

class _BookMarCardState extends State<BookMarCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: bookMarkItem.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 1,
            crossAxisSpacing: 3,
            mainAxisExtent: 200),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.all(18),
            width: Get.width,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 164,
                  width: Get.width / 2.5,
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.network(
                      '${bookMarkItem.elementAt(index)['image']}',
                      fit: BoxFit.fill,
                      //width: double.infinity,
                    ),
                  ),
                ),
                //------------image----------------
                const SizedBox(width: 19),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: const EdgeInsets.only(left: 1),
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 24),
                          decoration: const BoxDecoration(
                            color: kOrangeColor,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30),
                              bottomLeft: Radius.circular(30),
                            ),
                          ),
                          // ------- price -------------
                          child: Text(
                            "${bookMarkItem.elementAt(index)['price']} EGP",
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 13),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${bookMarkItem.elementAt(index)['title']}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.store_rounded,
                            color: kprimaryColor,
                            size: 16,
                          ),
                          AutoSizeText(
                            '${bookMarkItem.elementAt(index)['seller']}',
                            style: const TextStyle(fontWeight: FontWeight.w500),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                      const SizedBox(height: 7),
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 3, vertical: 2),
                            padding: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 10),
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
                                  fontWeight: FontWeight.bold, fontSize: 8),
                            ),
                          ),
                          Text('${product.elementAt(index)['quality']}'),
                          qualityCircle(index),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: kOrangeColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 7),
                                //fixedSize: const Size(100, 10),
                              ),
                              child: const Text(
                                'Add to basket',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 15),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  bookMarkItem.remove(product.elementAt(index));
                                });
                              },
                              icon: const Icon(
                                Icons.bookmark_remove,
                                color: Colors.black,
                                size: 21,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
