import 'package:flutter/material.dart';
import 'package:pinapp/constans.dart';
import 'Routes/routes.dart';
import 'Screens/create_pin_screen.dart';
import 'utils/pin_preferences.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await PinSimplePreferences.init();
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
      initialRoute: CreatePinScreen.routeName,
      routes: routes,
    );
  }
}
