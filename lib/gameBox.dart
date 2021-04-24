import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  final gameText;
  final textColor;

  GameBox({this.gameText, this.textColor});
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
