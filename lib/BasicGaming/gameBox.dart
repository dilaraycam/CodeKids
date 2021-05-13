import 'package:flutter/material.dart';

class GameBox extends StatelessWidget {
  final imageUrl;
  final textColor;
  final function;

  GameBox({this.imageUrl, this.textColor, this.function});
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
          width: 120,
          height: 130,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ));
  }
}
