import 'package:flutter/material.dart';
import 'targetDraggable.dart';

class RunButton extends StatelessWidget {
  final data;
  final TargetButton deger = new TargetButton();
  final function1, function2, function3;
  //var deger = TargetButton.number;

  RunButton({this.data, this.function1, this.function2, this.function3});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        function1();

        function2();

        function3();
      },
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 27,
        child: Container(
          child: Text(
            'RUN',
            style: TextStyle(fontWeight: FontWeight.bold),
            textDirection: TextDirection.ltr,
          ),
        ),
      ),
    );
  }
}
