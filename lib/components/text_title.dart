import 'package:flutter/material.dart';

import '../constans.dart';

class TextTitle extends StatelessWidget {
  final String text;
  const TextTitle({
    Key key,
    @required this.size,
    this.text,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: ktitleColor,
        fontSize: size.height * 0.04,
      ),
    );
  }
}
