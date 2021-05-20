import 'package:flutter/material.dart';
import 'package:codekids/BasicGaming/targetDraggable.dart';

class Repeat extends StatelessWidget {
  final boxcolor;

  Repeat({this.boxcolor});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
          width: 350,
          height: 120,
          color: boxcolor,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
