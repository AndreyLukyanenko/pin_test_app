import "package:flutter/material.dart";

import '../constans.dart';

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final EdgeInsets margin;
  final int index;
  const DigitHolder({
    Key key,
    @required this.size,
    this.selectedIndex,
    this.margin,
    this.index,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: size.height * 0.03,
      width: size.width * 0.03,
      decoration: BoxDecoration(
        border: Border.all(
          color: ktitleColor,
        ),
        shape: BoxShape.circle,
        color: index == selectedIndex ? kselectedDigitColor : kwhiteColor,
      ),
    );
  }
}
