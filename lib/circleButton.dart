import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final child;

  CircleButton({this.child});

  @override
  Widget build(BuildContext context) {
    return Align(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: EdgeInsets.all(15),
          color: Colors.red[300],
          child: child,
        ),
      ),
    );
  }
}
