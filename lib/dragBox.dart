import 'package:flutter/material.dart';

class DragBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: Container(width: 400, height: 100, color: Colors.green),
    );
  }
}
