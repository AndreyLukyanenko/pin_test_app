import 'package:flutter/material.dart';
import 'package:pinapp/Screens/auth_screen.dart';

import 'package:pinapp/components/backspace_icon_button.dart';
import 'package:pinapp/components/custom_appbar.dart';
import 'package:pinapp/components/digit_block.dart';
import 'package:pinapp/components/digit_button.dart';
import 'package:pinapp/components/digit_holder.dart';
import 'package:pinapp/components/text_title.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ConfirmPinScreen extends StatefulWidget {
  static String routeName = "/confirm_pin";
  final String enteredPin;

  ConfirmPinScreen({
    Key key,
    this.enteredPin,
  }) : super(key: key);

  @override
  _ConfirmPinScreen createState() => _ConfirmPinScreen();
}

class _ConfirmPinScreen extends State<ConfirmPinScreen> {
  String confirmPin = '';

  addDigit(int digit) async {
    print(widget.enteredPin);
    setState(() {
      confirmPin += digit.toString();
      saveToPrefs();
      print('Code is $confirmPin');
    });
    if (confirmPin.length >= 4 && confirmPin == widget.enteredPin) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Your PIN has been setup succesfuly!'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AuthScreen.routeName);
              },
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  backspace() {
    if (confirmPin.length == 0) {
      return;
    }
    setState(() {
      confirmPin = confirmPin.substring(0, confirmPin.length - 1);
    });
  }

  saveToPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("user-pin", widget.enteredPin);
    print("Saved to prefs ${widget.enteredPin}");
  }

  getFromPrefs() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      confirmPin = prefs.getString("user-pin") ?? "";
      print("Downloaded from prefs");
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        height: size.height * 0.08,
        size: size,
        titleText: 'Setup PIN',
        text: 'Use 6-digits PIN',
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
                      text: "Re-enter your PIN",
                      size: size,
                    ),
                  ),
                  DigitBlock(size: size, pinData: confirmPin),
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
