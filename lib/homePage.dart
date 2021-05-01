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
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameBox(
                      imageUrl: 'assets/images/boy.jpg', function: BasicGame()),
                  GameBox(imageUrl: 'assets/images/boy1.jpg'),
                  GameBox(imageUrl: 'assets/images/boy2.jpg'),
                ],
              )),
        ),
        Expanded(
          flex: 2,
          child: Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GameBox(imageUrl: 'assets/images/boy3.jpg'),
                  GameBox(imageUrl: 'assets/images/boy4.jpg'),
                  GameBox(imageUrl: 'assets/images/boy5.jpg'),
                ],
              )),
        ),
      ]),
    );
  }
}
