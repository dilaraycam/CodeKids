import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final arrow;
  final function;

  MyButton({this.arrow, this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: function,
        child: Draggable(
          //axis: Axis.horizontal,
          child: CircleAvatar(
            radius: 20,
            child: Container(
              child: arrow,
            ),
          ),
          feedback: CircleAvatar(
            radius: 20,
            child: Container(
              child: arrow,
            ),
          ),
          //childWhenDragging: Container(),
          data: arrow,
        ));
  }
}
