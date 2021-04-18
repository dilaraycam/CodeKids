import 'package:flutter/material.dart';

class MyCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      child: Image.asset(
        'assets/images/BadCloud.png',
        repeat: ImageRepeat.repeatX,
      ),
    );
  }
}
