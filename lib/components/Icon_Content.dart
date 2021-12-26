import 'package:flutter/material.dart';
import 'Constants.dart';

class IconContent extends StatelessWidget {
  IconContent({this.icon, this.name});

  final String name;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          name,
          style: kLableTextStyle,
        ),
      ],
    );
  }
}
