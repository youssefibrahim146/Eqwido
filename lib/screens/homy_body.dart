import 'package:auto_size_text/auto_size_text.dart';
import 'package:eqwido/widgets/searc_box.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/colors.dart';
import '../widgets/category_row.dart';
import '../widgets/item_card.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
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
                  Expanded(
                    child: SearchBaar(
                      onChanged: (value) {},
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.format_list_bulleted_rounded,
                      color: kSecondaryColor,
                      size: 28,
                    ),
                    onPressed: () {
                      Get.bottomSheet(
                        elevation: 15,
                        backgroundColor: kSecondaryColor,
                        enableDrag: true,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(35),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                ExpandableNotifier(
                                  child: ScrollOnExpand(
                                    child: ExpandablePanel(
                                      theme: const ExpandableThemeData(
                                        iconColor: kOrangeColor,
                                        iconSize: 35,
                                      ),
                                      collapsed: const SizedBox(),
                                      header: const AutoSizeText(
                                        "Category",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      expanded: Column(
                                        children: [
                                          onTapText(
                                              text: "Furniture", onTap: () {}),
                                          onTapText(text: "Cars", onTap: () {}),
                                          onTapText(
                                              text: "Bikes", onTap: () {}),
                                          onTapText(
                                              text: "Electronics",
                                              onTap: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(thickness: 1),
                                ExpandableNotifier(
                                  child: ScrollOnExpand(
                                    child: ExpandablePanel(
                                      theme: const ExpandableThemeData(
                                        iconColor: kOrangeColor,
                                        iconSize: 35,
                                      ),
                                      collapsed: const SizedBox(),
                                      header: const AutoSizeText(
                                        "Price",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      expanded: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(8),
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: 60,
                                            height: 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black),
                                            ),
                                            child: TextField(
                                              onChanged: (text) {},
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                hintText: 'From',
                                                hintStyle: TextStyle(
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text("To"),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: 60,
                                            height: 32,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black),
                                            ),
                                            child: TextField(
                                              onChanged: (text) {},
                                              style: const TextStyle(
                                                color: Colors.black,
                                              ),
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: const InputDecoration(
                                                enabledBorder: InputBorder.none,
                                                focusedBorder: InputBorder.none,
                                                hintText: 'To',
                                                hintStyle: TextStyle(
                                                  color: Colors.black45,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(thickness: 1),
                                ExpandableNotifier(
                                  child: ScrollOnExpand(
                                    child: ExpandablePanel(
                                      theme: const ExpandableThemeData(
                                        iconColor: kOrangeColor,
                                        iconSize: 35,
                                      ),
                                      collapsed: const SizedBox(),
                                      header: const AutoSizeText(
                                        "Quality",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      expanded: Column(
                                        children: [
                                          onTapText(
                                              text: "Excellent", onTap: () {}),
                                          onTapText(text: "Good", onTap: () {}),
                                          onTapText(text: "bad", onTap: () {}),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const Divider(thickness: 1),
                                ExpandableNotifier(
                                  child: ScrollOnExpand(
                                    child: ExpandablePanel(
                                      theme: const ExpandableThemeData(
                                        iconColor: kOrangeColor,
                                        iconSize: 35,
                                      ),
                                      collapsed: const SizedBox(),
                                      header: const AutoSizeText(
                                        "Seller",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      expanded:
                                          onTapText(text: "test", onTap: () {}),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 15),
                                Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(right: 10),
                                      width: (Get.width / 2) - 70,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Colors.transparent,
                                          ),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'Cancel',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: (Get.width / 2) - 20,
                                      child: ElevatedButton(
                                        onPressed: () {},
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  kOrangeColor),
                                          shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                        ),
                                        child: const Text(
                                          'Save',
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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

  Widget onTapText({required String text, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            AutoSizeText(text, minFontSize: 9, maxFontSize: 15),
          ],
        ),
      ),
    );
  }
}
