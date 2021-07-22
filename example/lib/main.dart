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
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: SpeechBalloon(
            height: 100,
            width: 100,
            nipHeight: 30,
            // offset: Offset(120, 120),
            nipLocation: NipLocation.bottom,

            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.all(4),
                ),
                Text(
                  '1',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
