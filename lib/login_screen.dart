import 'dart:ui';

import 'package:flutter/material.dart';
import './custom_widgets.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool inLogin = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/background.jpg"))),
        child: Center(
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.12),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.2),
                    width: 3,
                  ),
                ),
                child: inLogin ? buildLoginForm() : buildIntro(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIntro() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Hello !",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          "Lorem ipsum dolor sit amet, "
          "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim",
          style: TextStyle(color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          child: GestureDetector(
            onTap: () {
              setState(() {
                inLogin = true;
              });
            },
            child: const Row(
              children: [
                Expanded(
                    child: CustomButton(
                  text: "SIGN IN",
                  primary: true,
                )),
              ],
            ),
          ),
        ),
        const Row(
          children: [
            Expanded(
                child: CustomButton(
              text: "SIGN UP",
            )),
          ],
        ),
      ],
    );
  }

  Widget buildLoginForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: CustomInput(
            hint: "Login",
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: CustomInput(
            hint: "Password",
            password: true,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 15.0),
          child: CustomButton(
            text: "SIGN IN",
            primary: true,
          ),
        ),
        Text(
          "Forgot password ? ",
          style: TextStyle(color: Colors.grey.shade300),
        )
      ],
    );
  }
}
