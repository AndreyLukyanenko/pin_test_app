import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome_screen";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Image.asset(
        "images/welcome.jpeg",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
