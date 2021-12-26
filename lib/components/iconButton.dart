import 'package:flutter/material.dart';


class Icon_Button extends StatelessWidget {
  Icon_Button({this.icon, this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        size: 20.0,
      ),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      onPressed: onpress,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}