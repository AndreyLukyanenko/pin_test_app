import 'package:flutter/material.dart';
import 'package:pinapp/components/custom_appbar.dart';
import 'package:pinapp/components/digit_holder.dart';
import 'package:pinapp/components/text_title.dart';

class CreatePinScreen extends StatelessWidget {
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  child: TextTitle(
                    text: "Create PIN",
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
          Expanded(
            flex: 5,
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
