import 'package:eqwido/screens/setting_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../models/colors.dart';
import 'basket_screen.dart';
import 'book_mark_screen.dart';
import 'homy_body.dart';
import 'map_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;
  List<Widget> tabs = const [
    HomeBody(),
    BookMarkTab(),
    MapTab(),
    SettingsTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: kprimaryColor,
        appBar: mainAppBar(context),
        body: tabs[pageIndex],
        bottomNavigationBar: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 0),
                color: Colors.black.withOpacity(0.6),
              )
            ],
            borderRadius: BorderRadius.circular(30),
            color: kprimaryColor,
          ),
          child: GNav(
            padding: const EdgeInsets.all(10), // internal padding
            color: kSecondaryColor.withOpacity(0.7),
            activeColor: kSecondaryColor,
            backgroundColor: Colors.transparent,
            tabBackgroundColor: const Color.fromARGB(255, 33, 95, 202),
            onTabChange: (i) {
              setState(() => pageIndex = i);
            },
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.bookmark_border_sharp, text: 'bookmark'),
              GButton(icon: Icons.location_on, text: 'Map'),
              GButton(icon: Icons.settings, text: 'settings'),
            ],
          ),
        ),
      ),
    );
  }

  AppBar mainAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      title: const Text('Hi Youssef ...!'),
      leading: IconButton(
        onPressed: () {
          if (ZoomDrawer.of(context)!.isOpen()) {
            ZoomDrawer.of(context)!.close();
          } else {
            ZoomDrawer.of(context)!.open();
          }
        },
        icon: SvgPicture.asset('assets/icons/menu.svg', color: kSecondaryColor),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Get.to(()=>const BasketScreen());
            }, icon: const Icon(Icons.shopping_basket_rounded)),
      ],
    );
  }
}
