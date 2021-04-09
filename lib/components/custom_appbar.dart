import 'package:flutter/material.dart';

import '../constans.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleText;
  final String text;
  final double height;
  final Icon icon;
  final Function onTap;
  const CustomAppBar({
    Key key,
    @required this.size,
    this.height,
    this.icon,
    this.onTap,
    this.titleText,
    this.text,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: TextStyle(
          fontSize: size.height * 0.025,
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: size.height * 0.025,
                  color: ktitleColor,
                ),
              ),
            ),
          ),
        ),
      ],
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
