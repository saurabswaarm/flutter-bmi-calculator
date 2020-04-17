import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  final IconData icon;
  final Function stateFunction;
  CounterButton({this.icon, @required this.stateFunction});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
                        child: Icon(icon),
                        onPressed: stateFunction,
                        elevation: 5,
                        fillColor: Color(0xFF4C4F5E),
                        shape: CircleBorder(),
                        constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
                      );
}
}