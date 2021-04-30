import 'package:flutter/material.dart';

class MyPlane extends StatelessWidget {
  final planeX;
  final planeY;

  MyPlane({this.planeX, this.planeY});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: AnimatedContainer(
      alignment: Alignment(planeX, planeY),
      duration: Duration(milliseconds: 0),
      child: Image.asset(
        'assets/images/Fly (2).png',
        width: 100,
        height: 100,
      ),
    ));
  }
}
