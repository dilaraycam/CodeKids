import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final child;

  MyButton({this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[300],
      child: child,
    );
  }
}
