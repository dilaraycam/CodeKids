import 'package:flutter/material.dart';
import 'button.dart';

class DragBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(
          width: 400,
          height: 100,
          color: Colors.green,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            MyButton(
              child: Text(
                '  1  ',
                textDirection: TextDirection.ltr,
              ),
            ),
            MyButton(
              child: Text(
                '  2  ',
                textDirection: TextDirection.ltr,
              ),
            ),
            MyButton(
                child: Text(
              '  3  ',
              textDirection: TextDirection.ltr,
            ))
          ])),
    );
  }
}
