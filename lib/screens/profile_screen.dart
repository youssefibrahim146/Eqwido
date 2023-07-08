import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isEdite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            onPressed: () {
              setState(() {
                isEdite ? isEdite = false : isEdite = true;
              });
            },
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
              profileTitle(title: "User Name", isEdite: isEdite),
              userDetailText(
                  txt: "Youssef Ebrahim Mohamed",
                  keyboardType: TextInputType.text,
                  isEdite: isEdite),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "E-mail", isEdite: isEdite),
              userDetailText(
                  txt: "youssife2brahim22@gmail.com",
                  keyboardType: TextInputType.emailAddress,
                  isEdite: isEdite),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Gender", isEdite: isEdite),
              userDetailText(
                  txt: "Male",
                  keyboardType: TextInputType.name,
                  isEdite: isEdite),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 135),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Age", isEdite: isEdite),
              userDetailText(
                  txt: "21",
                  keyboardType: TextInputType.number,
                  isEdite: isEdite),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 60),
                child: Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
              ),
              profileTitle(title: "Account type", isEdite: isEdite),
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

  Widget userDetailText(
          {required String txt,
          required TextInputType keyboardType,
          required bool isEdite}) =>
      Container(
          margin: const EdgeInsets.all(10),
          child: TextFormField(
            readOnly: !isEdite,
            keyboardType: keyboardType,
            decoration: const InputDecoration(border: InputBorder.none),
            textAlign: TextAlign.center,
            initialValue: txt,
            style: const TextStyle(color: kSecondaryColor),
          ));

  Widget profileTitle({required String title, required bool isEdite}) =>
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: kSecondaryColor),
        child: isEdite? Row(
          mainAxisSize: MainAxisSize.min,
          children: [
          Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const Text(
          "  *",
          style: TextStyle(fontWeight: FontWeight.bold,color: Color.fromARGB(255, 239, 22, 6)),
        ),
        ],):Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      );
}
