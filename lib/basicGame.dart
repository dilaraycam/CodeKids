import 'dart:async';

import 'package:flutter/material.dart';
import 'button.dart';
import 'plane.dart';
import 'dragBox.dart';
import 'circleButton.dart';

class BasicGame extends StatefulWidget {
  @override
  _BasicGameState createState() => _BasicGameState();
}

class _BasicGameState extends State<BasicGame> {
  static double planeX = -1;
  static double planeY = 0.8;
  double time = 0;
  double height = 0;
  double initialHeight = planeY;

  void preUp() {
    time = 0;
    initialHeight = planeY;
  }

  void up() {
    preUp();
    Timer.periodic(Duration(milliseconds: 50), (timer) {
      time += 0.005;
      height = -4.9 * time * time * 5 * time;

      if (initialHeight - height < -1) {
        planeY = -0.8;
      }

      setState(() {
        planeY = -0.8;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 4,
          child: Container(
              color: Colors.blue,
              child: AnimatedContainer(
                alignment: Alignment(planeX, planeY),
                duration: Duration(milliseconds: 0),
                child: MyPlane(),
              )),
        ),
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.brown,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      child: Icon(Icons.arrow_back),
                    ),
                    MyButton(
                      child: Icon(Icons.arrow_upward),
                      function: up,
                    ),
                    MyButton(
                      child: Icon(Icons.arrow_forward),
                    ),
                    DragBox(),
                    CircleButton(
                      child: Text(
                        'RUN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ])),
        ),
      ]),
    );
  }
}
