import 'package:flutter/material.dart';

import '../constans.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomAppBar({
    Key key,
    @required this.size,
    this.height,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.arrow_back_ios),
      title: Text(
        'Setup PIN',
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
                'Use 6-digits PIN',
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