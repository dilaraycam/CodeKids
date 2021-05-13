import 'package:flutter/material.dart';

class TargetButton extends StatelessWidget {
  var number;

  TargetButton({this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircleAvatar(
      radius: 20,
      backgroundColor: Theme.of(context).highlightColor,
      child: DragTarget(
        builder: (context, candidateData, rejectedData) {
          return Container(
            child: number,
          );
        },
        onWillAccept: (data) {
          return true;
        },
        onAccept: (data) {
          number = CircleAvatar(
            radius: 20,
            child: Container(
              child: data,
            ),
          );
        },
      ),
    ));
  }
}
