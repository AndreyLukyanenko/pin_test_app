import 'package:flutter/material.dart';
import 'package:pinapp/Screens/create_pin_screen.dart';
import 'package:pinapp/components/backspace_icon_button.dart';
import 'package:pinapp/components/custom_appbar.dart';
import 'package:pinapp/components/digit_button.dart';
import 'package:pinapp/components/digit_holder.dart';
import 'package:pinapp/components/text_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthScreen extends StatefulWidget {
  static String routeName = "/auth";
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  String authPin = "";
  String userInputPin = "";

  addDigit(int digit) {
    setState(() {
      userInputPin += digit.toString();
      print('Code is $authPin');
      if (authPin.length >= 4 && userInputPin == authPin) {
        print('whaaaaatttt');
      }
    });
  }

  getFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      authPin = prefs.getString("user-pin") ?? "";
      print("Downloaded from prefs");
    });
  }

  backspace() {
    if (userInputPin.length == 0) {
      return;
    }
    setState(() {
      userInputPin = userInputPin.substring(0, userInputPin.length - 1);
    });
  }

  @override
  void initState() {
    super.initState();
    getFromPrefs();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        height: size.height * 0.08,
        size: size,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: TextTitle(
                      text: "Enter your PIN",
                      size: size,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35.0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DigitHolder(
                            index: 1,
                            dataLength: userInputPin.length,
                            size: size,
                            margin: EdgeInsets.only(
                              left: 40.0,
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 2,
                            dataLength: userInputPin.length,
                            size: size,
                            margin: EdgeInsets.only(
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 3,
                            dataLength: userInputPin.length,
                            size: size,
                            margin: EdgeInsets.only(
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 4,
                            dataLength: userInputPin.length,
                            size: size,
                            margin: EdgeInsets.only(
                              right: 40.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              width: double.infinity,
              height: size.height * 0.60,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 68.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        DigitButton(
                          text: "1",
                          size: size,
                          onPress: () {
                            addDigit(1);
                          },
                        ),
                        DigitButton(
                          text: "2",
                          size: size,
                          onPress: () {
                            addDigit(2);
                          },
                        ),
                        DigitButton(
                          text: "3",
                          size: size,
                          onPress: () {
                            addDigit(3);
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DigitButton(
                        text: "4",
                        size: size,
                        onPress: () {
                          addDigit(4);
                        },
                      ),
                      DigitButton(
                        text: "5",
                        size: size,
                        onPress: () {
                          addDigit(5);
                        },
                      ),
                      DigitButton(
                        text: "6",
                        size: size,
                        onPress: () {
                          addDigit(6);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DigitButton(
                        text: "7",
                        size: size,
                        onPress: () {
                          addDigit(7);
                        },
                      ),
                      DigitButton(
                        text: "8",
                        size: size,
                        onPress: () {
                          addDigit(8);
                        },
                      ),
                      DigitButton(
                        text: "9",
                        size: size,
                        onPress: () {
                          addDigit(9);
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: size.width * 0.18,
                      ),
                      DigitButton(
                        size: size,
                        text: "0",
                        onPress: () {
                          addDigit(0);
                        },
                      ),
                      BackspaceIconButton(
                        size: size,
                        onPress: () {
                          backspace();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
