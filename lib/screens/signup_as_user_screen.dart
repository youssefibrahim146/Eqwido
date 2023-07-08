import 'package:eqwido/models/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpAsUserScreen extends StatefulWidget {
  const SignUpAsUserScreen({super.key});

  @override
  State<SignUpAsUserScreen> createState() => _SignUpAsUserScreenState();
}

class _SignUpAsUserScreenState extends State<SignUpAsUserScreen> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: kprimaryColor,
        ),
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/image/signupImage.png"),
              const SizedBox(height: 5),
              const Text(
                'SignUp',
                style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 45),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  style: const TextStyle(color: kSecondaryColor),
                  decoration: const InputDecoration(
                      hintText: 'First Name',
                      border: InputBorder.none,
                      hintMaxLines: 1,
                      hintStyle: TextStyle(
                          color: kSecondaryColor, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 15, left: 45, right: 45),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  style: const TextStyle(color: kSecondaryColor),
                  decoration: const InputDecoration(
                      hintText: 'Last Name',
                      border: InputBorder.none,
                      hintMaxLines: 1,
                      hintStyle: TextStyle(
                          color: kSecondaryColor, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 15, left: 45, right: 45),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: TextFormField(
                  style: const TextStyle(color: kSecondaryColor),
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      hintMaxLines: 1,
                      hintStyle: TextStyle(
                          color: kSecondaryColor, fontWeight: FontWeight.bold)),
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 15, left: 45, right: 45),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: isObscureText,
                        style: const TextStyle(color: kSecondaryColor),
                        decoration: const InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none,
                            hintMaxLines: 1,
                            hintStyle: TextStyle(
                                color: kSecondaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isObscureText = isObscureText ? false : true;
                        });
                      },
                      icon: Icon(
                        !isObscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
                margin: const EdgeInsets.only(bottom: 20, left: 45, right: 45),
                decoration: BoxDecoration(
                    color: kprimaryColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        obscureText: isObscureText,
                        style: const TextStyle(color: kSecondaryColor),
                        decoration: const InputDecoration(
                            hintText: 'Re-enter password',
                            border: InputBorder.none,
                            hintMaxLines: 1,
                            hintStyle: TextStyle(
                                color: kSecondaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isObscureText = isObscureText ? false : true;
                        });
                      },
                      icon: Icon(
                        !isObscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 5)),
                    elevation: MaterialStateProperty.all(1),
                    backgroundColor: MaterialStateProperty.all(kOrangeColor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)))),
                child: const Text(
                  'Register',
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
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/google icon.png', scale: 42),
                    const SizedBox(width: 4),
                    const Text(
                      'Continue with Google',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all(10),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/icons/facebook icon.png', scale: 25),
                    const SizedBox(width: 4),
                    const Text(
                      'Continue with Facebook',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
