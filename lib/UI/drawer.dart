import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:get/get.dart';

import '../models/colors.dart';
import '../screens/drawer_screen.dart';
import '../screens/home_screen.dart';


class ZDrawer extends StatelessWidget {
  const ZDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final zoomDrawerController = ZoomDrawerController();
    return  ZoomDrawer(
      controller: zoomDrawerController,
      style: DrawerStyle.defaultStyle,
      angle: -10,
      borderRadius: 40,
      //openCurve: Curves.fastOutSlowIn,
      slideWidth: Get.width*0.6,
      mainScreenTapClose: true,
      showShadow: true,
      drawerShadowsBackgroundColor: kOrangeColor,
      menuBackgroundColor: kkBlue,
      mainScreen:   const HomePage(),
      menuScreen: const DrawerScreen(),
    );
  }
}