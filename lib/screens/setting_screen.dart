import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

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
              roundedSettings("Profile"),
              roundedSettings("Language"),
              roundedSettings("Notifications"),
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
    );
  }
}

Widget roundedSettings(String str) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
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
        const Icon(
          Icons.arrow_forward_ios,
          size: 27,
        )
      ],
    ),
  );
}
