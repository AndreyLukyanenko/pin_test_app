import 'package:flutter/material.dart';

import '../constans.dart';

class DigitButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const DigitButton({
    Key key,
    @required this.size,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        height: size.height * 0.10,
        width: size.width * 0.17,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
        ),
        child: Padding(
          padding: const EdgeInsets.all(17.0),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: size.height * 0.035, color: ktitleColor),
          ),
        ),
      ),
    );
  }
}
