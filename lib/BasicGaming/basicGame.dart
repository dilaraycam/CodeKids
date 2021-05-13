import 'dart:async';
import 'package:flutter/material.dart';
import 'button.dart';
import 'plane.dart';
import 'dragBox.dart';
import 'clouds.dart';
import 'runButton.dart';

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
      time += 0.05;
      height = -4.9 * time * time * 5 * time;

      if (initialHeight - height < -1) {
        planeY = -0.8;
      }

      setState(() {
        planeY = -0.8;
      });
    });
  }

  void moveRight() {
    setState(() {
      planeX += 1;
    });
  }

  void moveLeft() {
    setState(() {
      planeX -= 0.02;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/sky.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: MyPlane(planeX: planeX, planeY: planeY),
                ),
                Clouds(),
                BackButton(),
              ],
            )),
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.orange,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    MyButton(
                      arrow: Icon(Icons.arrow_back),
                      function: moveLeft,
                    ),
                    MyButton(
                      arrow: Icon(Icons.arrow_upward),
                      function: up,
                    ),
                    MyButton(
                      arrow: Icon(Icons.arrow_forward),
                      function: moveRight,
                    ),
                    DragBox(),
                    RunButton(),
                  ])),
        ),
      ]),
    );
  }
}
