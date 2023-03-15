import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'account_type_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      appBar: AppBar(elevation: 0),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/loginImage.png"),
              const Text(
                'Login',
                style: TextStyle(
                  color: kSecondaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 45),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Type your Email Here',
                    border: InputBorder.none,
                    hintMaxLines: 1,
                  ),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin: const EdgeInsets.only(
                    top: 7, bottom: 20, left: 45, right: 45),
                decoration: BoxDecoration(
                    color: kSecondaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    hintMaxLines: 1,
                  ),
                ),
              ),
              const Text(
                "Forgot Your Password?",
                style: TextStyle(
                    color: kSecondaryColor, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 25),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 8)),
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(kOrangeColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 30),
                    color: Colors.black,
                    width: Get.width,
                    height: 2,
                  ),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: kSecondaryColor,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.black, width: 2.5)),
                    child: const Text(
                      'OR',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/google icon.png', scale: 42),
                    const SizedBox(width: 4),
                    const Text(
                      'Login with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(kSecondaryColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/facebook icon.png', scale: 25),
                    const SizedBox(width: 4),
                    const Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Dont Have an account?",
                    style: TextStyle(color: kSecondaryColor),
                  ),
                  TextButton(
                    onPressed: () => Get.to(const AccountTypeScreen()),
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: kOrangeColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
