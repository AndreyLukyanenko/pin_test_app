import 'package:flutter/material.dart';

import 'package:pinapp/components/backspace_icon_button.dart';
import 'package:pinapp/components/custom_appbar.dart';
import 'package:pinapp/components/digit_button.dart';
import 'package:pinapp/components/digit_holder.dart';
import 'package:pinapp/components/text_title.dart';

class ConfirmPinScreen extends StatefulWidget {
  @override
  _ConfirmPinScreen createState() => _ConfirmPinScreen();
}

class _ConfirmPinScreen extends State<ConfirmPinScreen> {
  @override
  Widget build(BuildContext context) {
    var selectedIndex;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(height: size.height * 0.08, size: size),
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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 35.0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          DigitHolder(
                            index: 0,
                            selectedIndex: selectedIndex,
                            size: size,
                            margin: EdgeInsets.only(
                              left: 40.0,
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 1,
                            selectedIndex: selectedIndex,
                            size: size,
                            margin: EdgeInsets.only(
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 2,
                            selectedIndex: selectedIndex,
                            size: size,
                            margin: EdgeInsets.only(
                              right: 40.0,
                            ),
                          ),
                          DigitHolder(
                            index: 3,
                            selectedIndex: selectedIndex,
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
                          onPress: () {},
                        ),
                        DigitButton(
                          text: "2",
                          size: size,
                          onPress: () {},
                        ),
                        DigitButton(
                          text: "3",
                          size: size,
                          onPress: () {},
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
                        onPress: () {},
                      ),
                      DigitButton(
                        text: "5",
                        size: size,
                        onPress: () {},
                      ),
                      DigitButton(
                        text: "6",
                        size: size,
                        onPress: () {},
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DigitButton(
                        text: "7",
                        size: size,
                        onPress: () {},
                      ),
                      DigitButton(
                        text: "8",
                        size: size,
                        onPress: () {},
                      ),
                      DigitButton(
                        text: "9",
                        size: size,
                        onPress: () {},
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
                        onPress: () {},
                      ),
                      BackspaceIconButton(size: size),
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
