import 'package:flutter/material.dart';
import 'targetDraggable.dart';

class RunButton extends StatelessWidget {
  final data;
  final TargetButton deger;
  //var deger = TargetButton.number;

  RunButton({this.data, this.deger});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("onTap called.");
      },
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 27,
        child: Container(
          child: Text(
            'RUN',
            style: TextStyle(fontWeight: FontWeight.bold),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
