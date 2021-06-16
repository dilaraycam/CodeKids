import 'dart:async';
import 'package:flutter/material.dart';
import 'package:codekids/BasicGaming/plane.dart';
import 'package:codekids/BasicGaming/runButton.dart';
import 'package:codekids/BasicGaming/button.dart';
import 'package:codekids/Loops/dragBoxLoops.dart';
import 'package:codekids/Loops/repeat.dart';

class FunctionsGame extends StatefulWidget {
  @override
  _FunctionsGameState createState() => _FunctionsGameState();
}

class _FunctionsGameState extends State<FunctionsGame> {
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
        planeY = -0.3;
      });
    });
  }

  void moveRight() {
    setState(() {
      planeX += 0.8;
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
            child: Row(children: [
              Expanded(
                  flex: 4,
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/background2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: MyPlane(
                            planeX: planeX,
                            planeY: planeY,
                            assetUrl: 'assets/images/angel.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(100, 0, 0, 0),
                        child: Image.asset('assets/images/sun.png'),
                      ),
                      BackButton(),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(children: [
                    DragBoxLoops(boxcolor: Colors.orange),
                    Repeat(boxcolor: Colors.brown),
                  ]))
            ])),
        Expanded(
          flex: 1,
          child: Container(
              color: Colors.green,
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
                    MyButton(
                      arrow: Icon(Icons.call_missed_outgoing),
                    ),
                    RunButton(
                        function1: moveLeft,
                        function2: up,
                        function3: moveRight),
                  ])),
        ),
      ]),
    );
  }
}
