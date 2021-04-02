import "package:flutter/material.dart";

import '../constans.dart';

class DigitHolder extends StatefulWidget {
  final int selectedIndex;
  final EdgeInsets margin;
  final int index;
  final String code;
  const DigitHolder({
    Key key,
    @required this.size,
    this.selectedIndex,
    this.margin,
    this.index,
    this.code,
  }) : super(key: key);

  final Size size;

  @override
  _DigitHolderState createState() => _DigitHolderState();
}

class _DigitHolderState extends State<DigitHolder> {
  var selectedIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: widget.margin,
      height: size.height * 0.03,
      width: size.width * 0.03,
      decoration: BoxDecoration(
        border: Border.all(
          color: ktitleColor,
        ),
        shape: BoxShape.circle,
        color: widget.index == widget.selectedIndex
            ? kselectedDigitColor
            : kwhiteColor,
      ),
    );
  }
}
