// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:eqwido/models/colors.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/product.dart';

class ItemDetailsScreen extends StatefulWidget {
  final int index;
  const ItemDetailsScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int activeIndecator = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          color: kSecondaryColor,
          image: DecorationImage(
            filterQuality: FilterQuality.high,
            image: AssetImage("assets/image/CardDetailsBg.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 18),
              CarouselSlider.builder(
                  options: CarouselOptions(
                    height: 180,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    onPageChanged: (indecator, reason) {
                      setState(() => activeIndecator = indecator);
                    },
                  ),
                  itemCount: product.elementAt(widget.index)['imageCount'],
                  itemBuilder: (context, i, reali) {
                    return buildImage('gg', i);
                  }),
              const SizedBox(height: 20),
              buildIndecator(),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      '${product.elementAt(widget.index)['seller']}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Text(
                      '${product.elementAt(widget.index)['title']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 26),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
                    ),
                  ],
                ),
              ),
              // description body
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: AutoSizeText(
                        '${product.elementAt(widget.index)['description']}',
                        maxLines: 5,
                        minFontSize: 13,
                        maxFontSize: 17,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ],
                ),
              ),
              // expandable specefication
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ExpandableNotifier(
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                          iconColor: kOrangeColor, iconSize: 30),
                      header: const Text(
                        'Specification',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      collapsed: const SizedBox(),
                      expanded: AutoSizeText(
                        '${product.elementAt(widget.index)['description']}',
                        maxLines: 5,
                        minFontSize: 13,
                        maxFontSize: 17,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ),
              // shop location
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Colors.grey[800], thickness: 2),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: ExpandableNotifier(
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                          iconColor: kOrangeColor, iconSize: 30),
                      header: const Text(
                        'Shop location',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      collapsed: const SizedBox(),
                      expanded: AutoSizeText(
                        '${product.elementAt(widget.index)['description']}',
                        maxLines: 5,
                        minFontSize: 13,
                        maxFontSize: 17,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Divider(color: Colors.grey[800], thickness: 2),
              ),
              // reviews
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: ExpandableNotifier(
                  child: ScrollOnExpand(
                    child: ExpandablePanel(
                      theme: const ExpandableThemeData(
                        iconColor: kOrangeColor,
                        iconSize: 30,
                      ),
                      header: const Text(
                        'Reviews',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      collapsed: const SizedBox(),
                      expanded: AutoSizeText(
                        '${product.elementAt(widget.index)['description']}',
                        maxLines: 5,
                        minFontSize: 13,
                        maxFontSize: 17,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(15),
        height: 75,
        decoration: const BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(33), topLeft: Radius.circular(33))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[500]),
                ),
                const SizedBox(height: 5),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${product.elementAt(widget.index)['price']}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: kSecondaryColor,
                          fontSize: 19),
                    ),
                    const SizedBox(width: 3),
                    const Text(
                      'EGP',
                      style: TextStyle(
                          color: kOrangeColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(width: 17),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.bookmark_add_sharp)),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: MaterialStateProperty.all(kOrangeColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)))),
              child: const Text(
                'add to basket',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage(String url, int i) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        color: Colors.grey,
        child: Image.network(
          product.elementAt(widget.index)['image'][i],
          fit: BoxFit.fill,
        ),
      );

  Widget buildIndecator() => AnimatedSmoothIndicator(
        activeIndex: activeIndecator,
        count: product.elementAt(widget.index)['imageCount'],
        effect: const ScrollingDotsEffect(
            dotWidth: 13,
            dotHeight: 13,
            activeDotColor: kOrangeColor,
            dotColor: kSecondaryColor,
            spacing: 12,
            radius: 20,
            maxVisibleDots: 5,
            fixedCenter: true),
      );
}
