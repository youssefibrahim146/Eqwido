import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/basket_card.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('basket'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          // --------- background-------------
          image: DecorationImage(
            image: AssetImage('assets/image/basketBg.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            //--------------------- basket Card -----------
            const Expanded(child: BasketCard()),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 18),
                  decoration: BoxDecoration(
                      color: kOrangeColor,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black45,
                            spreadRadius: 1,
                            blurRadius: 15),
                      ]),
                  child: const Text(
                    "Total Price: 60000",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 0),
                            color: Colors.black45,
                            spreadRadius: 1,
                            blurRadius: 15),
                      ]),
                  child: Row(
                    children: const [
                      Text(
                        "Checked",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 8),
                      Icon(Icons.check_circle_outline_outlined)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
