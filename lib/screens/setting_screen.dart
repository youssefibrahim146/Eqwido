import 'package:eqwido/models/colors.dart';
import 'package:eqwido/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
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
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(15),
          width: Get.width,
          height: Get.height,
          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: kprimaryColor,
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 0),
                color: Colors.black45,
                spreadRadius: 4,
                blurRadius: 25,
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'Settings',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                roundedSettings("Profile", () => Get.to(const ProfileScreen()), false),
                roundedSettings("Notifications", () {}, false),
                roundedSettings("Language", () {}, true),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kOrangeColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding:
                        const EdgeInsets.symmetric(vertical: 0, horizontal: 17),
                    //fixedSize: const Size(100, 10),
                  ),
                  child: const Text(
                    'Log out',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget roundedSettings(String str, VoidCallback ontap, bool widget) {
    bool langValue = true;
    return InkWell(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: kSecondaryColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              str,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            widget == false
                ? const Icon(
                    Icons.arrow_forward_ios,
                    size: 27,
                  )
                : SizedBox(
                  width: 123,
                  height: 40,
                  child: LiteRollingSwitch(
                    textOn: "English",
                    textOff: "Arabic",
                    iconOff: Icons.check,
                    colorOn: kprimaryColor,
                    colorOff: kOrangeColor,
                      value: langValue,
                      onChanged: (bool langState) {
                        setState(() {
                          langValue = langState;
                        });
                      },
                      onDoubleTap: () {},
                      onSwipe: () {},
                      onTap: () {},
                    ),
                ),
          ],
        ),
      ),
    );
  }
}
