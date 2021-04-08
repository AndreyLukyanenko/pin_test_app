import 'package:flutter/material.dart';
import 'package:pinapp/Screens/auth_screen.dart';
import 'package:pinapp/constans.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'Routes/routes.dart';
import 'Screens/create_pin_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  final bool firstRun = prefs.containsKey('user-pin') ?? false;
  runApp(
    PinnApp(
      firstRun: firstRun,
    ),
  );
}

class PinnApp extends StatelessWidget {
  final bool firstRun;

  const PinnApp({
    Key key,
    this.firstRun = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pin App',
      theme: ThemeData(
        primaryColor: kwhiteColor,
      ),
      initialRoute: firstRun ? AuthScreen.routeName : CreatePinScreen.routeName,
      routes: routes,
    );
  }
}
