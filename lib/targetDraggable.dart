import 'package:flutter/material.dart';

class TargetButton extends StatelessWidget {
  final child;

  TargetButton({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: CircleAvatar(
      radius: 20,
      backgroundColor: Theme.of(context).highlightColor,
      child: DragTarget(
        builder: (context, List<int> candidateData, rejectedData) {
          print(candidateData);
          return Container(
            child: child,
          );
        },
        onWillAccept: (data) {
          return true;
        },
      ),
    ));
  }
}
