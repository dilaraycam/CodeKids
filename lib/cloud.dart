import 'package:flutter/material.dart';

class MyCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      Image.asset('assets/images/road.png',
          height: 500, width: 500, scale: 0.8),
    ]));
  }
}
