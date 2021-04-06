import 'package:flutter/material.dart';

class BackspaceIconButton extends StatelessWidget {
  final Function onPress;
  const BackspaceIconButton({
    Key key,
    @required this.size,
    this.onPress,
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
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 12.0,
            right: 15.0,
          ),
          child: Icon(
            Icons.backspace,
          ),
        ),
      ),
    );
  }
}
