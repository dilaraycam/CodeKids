import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  final gameText;
  final textColor;
  final function;

  GameBox({this.gameText, this.textColor, this.function});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => function),
          );
        },
        child: Container(
          width: 150,
          height: 100,
          alignment: Alignment.center,
          color: textColor,
          child: Text(
            gameText,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
            textDirection: TextDirection.ltr,
          ),
        ));
  }
}
