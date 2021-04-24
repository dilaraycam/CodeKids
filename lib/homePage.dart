import 'package:flutter/material.dart';
import 'gameBox.dart';
import 'basicGame.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text(
              'CHOOSE YOUR GAME !!!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.black),
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameBox(
                      gameText: 'BASIC CODING',
                      textColor: Colors.red,
                      function: BasicGame()),
                  GameBox(gameText: 'SEQUENCES', textColor: Colors.grey),
                  GameBox(gameText: 'LOOPS', textColor: Colors.green),
                ],
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameBox(gameText: 'FUNCTIONS', textColor: Colors.purple),
                  GameBox(gameText: 'ARRAYS', textColor: Colors.pink),
                  GameBox(gameText: 'DEBUGGING', textColor: Colors.orange),
                ],
              )),
        ),
      ]),
    );
  }
}
