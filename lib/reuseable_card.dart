import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  final Color boxColor;
  final Widget cardChild;
  final Function stateFunction;

  ReuseableCard({@required this.boxColor, this.cardChild, this.stateFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: stateFunction,
      child: Container(
          child: cardChild,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: boxColor,
            borderRadius: BorderRadius.circular(10.0),
          )),
    );
  }
}
