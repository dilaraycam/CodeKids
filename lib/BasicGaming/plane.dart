import 'package:flutter/material.dart';

class MyPlane extends StatelessWidget {
  final planeX;
  final planeY;
  final assetUrl;

  MyPlane({this.planeX, this.planeY, this.assetUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: AnimatedContainer(
      alignment: Alignment(planeX, planeY),
      duration: Duration(milliseconds: 0),
      child: Image.asset(
        assetUrl,
        width: 100,
        height: 100,
      ),
    ));
  }
}
