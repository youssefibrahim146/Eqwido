import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/colors.dart';
import '../models/product.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: basketItem.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 20,
            crossAxisSpacing: 11,
            mainAxisExtent: 160,
          ),
          itemBuilder: (context, index) {
            return Container(
              width: Get.width,
              height: 150,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(0, 0),
                      color: Colors.black26,
                      spreadRadius: 1,
                      blurRadius: 15,
                    )
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 190,
                    width: Get.width / 2.5,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: CachedNetworkImage(
                        width: double.infinity,
                        placeholder: ((context, url) => const Center(
                                child: CircularProgressIndicator(
                              color: kOrangeColor,
                            ))),
                        imageUrl: product.elementAt(index)['image'][index],
                        fit: BoxFit.fill,
                        imageBuilder: ((context, imageProvider) {
                          return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.fill,
                            )),
                          );
                        }),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          '${basketItem.elementAt(index)['title']}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 15),
                        AutoSizeText(
                          'Shop: ${basketItem.elementAt(index)['seller']}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 8),
                        AutoSizeText(
                          'Price: ${basketItem.elementAt(index)['price']}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 17),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kOrangeColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 10),
                            //fixedSize: const Size(100, 10),
                          ),
                          child: const Text(
                            'Shop Location',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 18, horizontal: 7),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.delete_forever,
                            size: 26,
                          ),
                        ),
                        const SizedBox(height: 25),
                        const Icon(Icons.add_circle_outline),
                        const SizedBox(height: 2.5),
                        Text(
                          '${basketItem.elementAt(index)['itemCount']}',
                          // ignore: prefer_const_constructors
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 2.5),
                        const Icon(Icons.remove_circle_outline_rounded),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
