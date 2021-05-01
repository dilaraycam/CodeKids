import 'package:flutter/material.dart';

enum ButtonType { upward, forward, backward }

class TargetButton extends StatelessWidget {
  var number;
  final ButtonType type;

  TargetButton({this.number, this.type});

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
