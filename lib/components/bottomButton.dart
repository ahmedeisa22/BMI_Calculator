import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/Constants.dart';


class BottomButton extends StatelessWidget {
  BottomButton({this.name,this.ontap});
  final String name;
  final Function ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:ontap,
      child: Container(
        child: Text(
          name,
          textAlign: TextAlign.center,
          style: kLargeTextStyle,
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(top: 15.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}