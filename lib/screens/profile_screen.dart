import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              "Edit",
              style: TextStyle(
                color: kprimaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ],
        iconTheme: const IconThemeData(color: kprimaryColor),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/ProfileBG.png"),
            fit: BoxFit.fill,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                "Profile Picture",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(65),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          offset: Offset(0, 0),
                          blurRadius: 25,
                          spreadRadius: 0.4)
                    ]),
                child: const CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                      "https://pbs.twimg.com/media/FjU2lkcWYAgNG6d.jpg"),
                ),
              ),
              const SizedBox(height: 65),
              profileTitle(title: "User Name"),
              userDetailText(txt: "Youssef Ebrahim Mohamed"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "E-mail"),
              userDetailText(txt: "youssife2brahim22@gmail.com"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Gender"),
              userDetailText(txt: "Male"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Age"),
              userDetailText(txt: "21"),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Account type"),
              Container(
                margin: const EdgeInsets.only(bottom: 20, top: 8),
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: kOrangeColor),
                child: const Text(
                  "User",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget userDetailText({required String txt}) => Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        txt,
        style: const TextStyle(color: kSecondaryColor),
      ));

  Widget profileTitle({required String title}) => Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: kSecondaryColor),
        child: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}
