import 'package:flutter/material.dart';

class Clouds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
        child: Image.asset('assets/images/clouds.png'),
      ),
    );
  }
}
