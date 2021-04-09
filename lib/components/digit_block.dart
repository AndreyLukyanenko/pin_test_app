import 'package:flutter/material.dart';
import 'package:pinapp/components/text_title.dart';

import 'digit_holder.dart';

class DigitBlock extends StatelessWidget {
  const DigitBlock({
    Key key,
    @required this.size,
    @required String pinData,
  }) : _pinData = pinData, super(key: key);

  final Size size;
  final String _pinData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
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
                  children: [
                    DigitHolder(
                      index: 1,
                      dataLength: _pinData.length,
                      size: size,
                      margin: EdgeInsets.only(
                        left: 40.0,
                        right: 40.0,
                      ),
                    ),
                    DigitHolder(
                      index: 2,
                      dataLength: _pinData.length,
                      size: size,
                      margin: EdgeInsets.only(
                        right: 40.0,
                      ),
                    ),
                    DigitHolder(
                      index: 3,
                      dataLength: _pinData.length,
                      size: size,
                      margin: EdgeInsets.only(
                        right: 40.0,
                      ),
                    ),
                    DigitHolder(
                      index: 4,
                      dataLength: _pinData.length,
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
    );
  }
}