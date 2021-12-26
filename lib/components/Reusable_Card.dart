import 'package:flutter/material.dart';
class Reusable_Card extends StatelessWidget {
  Reusable_Card({@required this.colour, this.cardChild,this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: EdgeInsets.all(15.0),
        height: 200.0,
        width: 170.0,
      ),
    );
  }
}
