import 'package:flutter/material.dart';
import 'package:pinapp/Screens/auth_screen.dart';
import 'package:pinapp/Screens/confirm_pin_screen.dart';
import 'package:pinapp/Screens/create_pin_screen.dart';
import 'package:pinapp/Screens/welcome_screen.dart';

final Map<String, WidgetBuilder> routes = {
  CreatePinScreen.routeName: (context) => CreatePinScreen(),
  ConfirmPinScreen.routeName: (context) => ConfirmPinScreen(),
  AuthScreen.routeName: (context) => AuthScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
};
