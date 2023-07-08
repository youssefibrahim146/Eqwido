import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/colors.dart';
import '../models/constants.dart';
import 'login_screen.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kkBlue,
      body: Padding(
        padding: const EdgeInsets.only(left: kDefultPadding / 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: const [
                CircleAvatar(
                  minRadius: 30,
                  foregroundColor: Colors.grey,
                  maxRadius: 30,
                  backgroundColor: Colors.grey,
                  backgroundImage: AssetImage('assets/icons/person.png'),
                ),
                SizedBox(height: 15),
                // -------------user name ----------------
                Text(
                  'Youssef Ebrahim',
                  style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            const SizedBox(height: 10),
            //--------------buttons-----------
            Column(
              children: [
                drawerBtn(
                  icon: Icons.input_rounded,
                  title: 'Login | Sign up',
                  onTap: () {
                    Get.to(() => const LoginPage());
                  },
                ),
                drawerBtn(
                  icon: Icons.web_asset_outlined,
                  title: 'Eqwido Website',
                  onTap: () {},
                ),
                drawerBtn(
                  icon: Icons.rate_review_outlined,
                  title: 'Rate Us',
                  onTap: () {},
                ),
                drawerBtn(
                  icon: Icons.contact_page_outlined,
                  title: 'Contact Us',
                  onTap: () {},
                ),
                drawerBtn(
                  icon: Icons.info_outlined,
                  title: 'About Us',
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
Widget drawerBtn({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(35),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12, horizontal: 2),
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 9),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: kSecondaryColor,
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                  blurRadius: 7,
                  color: Colors.black38)
            ]),
        child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
          Icon(icon),
          const SizedBox(width: 7),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ]),
      ),
    );
  }
