import 'package:flutter/material.dart';
import 'targetDraggable.dart';

class DragBox extends StatelessWidget {
  final boxcolor;

  DragBox({this.boxcolor});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
          width: 350,
          height: 100,
          color: boxcolor,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            TargetButton(
              number: Text(
                '  1  ',
                style: TextStyle(fontWeight: FontWeight.bold),
                textDirection: TextDirection.ltr,
              ),
            ),
            TargetButton(
              number: Text(
                '  2  ',
                style: TextStyle(fontWeight: FontWeight.bold),
                textDirection: TextDirection.ltr,
              ),
            ),
            TargetButton(
                number: Text(
              '  3  ',
              style: TextStyle(fontWeight: FontWeight.bold),
              textDirection: TextDirection.ltr,
            ))
          ])),
    );
  }
}
