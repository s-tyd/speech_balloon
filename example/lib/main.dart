import 'package:flutter/material.dart';
import 'package:speech_balloon/speech_balloon.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('example'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.bottom,
                    borderColor: Colors.red,
                    color: Colors.white,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.right,
                    color: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.left,
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                        Text(
                          '11',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.top,
                    borderColor: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.green,
                        ),
                        Text(
                          '11',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.bottomLeft,
                    borderColor: Colors.red,
                    color: Colors.white,
                    borderWidth: 3,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.bottomRight,
                    color: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.topLeft,
                    color: Colors.green,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.white,
                        ),
                        Text(
                          '11',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  SpeechBalloon(
                    nipLocation: NipLocation.bottom,
                    borderColor: Colors.green,
                    height: 60,
                    width: 60,
                    borderRadius: 40,
                    offset: Offset(0, -1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people,
                          color: Colors.green,
                        ),
                        Text(
                          '11',
                          style: TextStyle(color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
