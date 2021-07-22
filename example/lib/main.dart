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
          child: SpeechBalloon(
            height: 50,
            width: 60,
            nipLocation: NipLocation.bottom,
            borderColor: Colors.red,
            color: Colors.white,
            // borderWidth: 5,
            child: Icon(
              Icons.favorite,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
