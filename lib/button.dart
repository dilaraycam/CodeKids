import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final child;
  final function;

  MyButton({this.child, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: function,
        child: Draggable(
          axis: Axis.horizontal,
          child: CircleAvatar(
            radius: 20,
            child: Container(
              child: child,
            ),
          ),
          feedback: CircleAvatar(
            radius: 20,
            child: Container(
              child: child,
            ),
          ),
          //childWhenDragging: Container(),
          data: ["Back", "Upward", "Forward"],
        ));
  }
}
