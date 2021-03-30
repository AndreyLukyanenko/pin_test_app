import 'package:flutter/material.dart';
import 'package:pinapp/constans.dart';
import 'Screens/crate_pin_screen.dart';

void main() {
  runApp(PinnApp());
}

class PinnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pin App',
      theme: ThemeData(
        primaryColor: kwhiteColor,
      ),
      home: CreatePinScreen(),
    );
  }
}
