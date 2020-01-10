import 'package:flutter/material.dart';
import 'package:xfiat_fluttify/xfiat_fluttify.dart';

void main() {
  runApp(MyApp());

  SpeechService.init('5de4a580');
}

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
          child: Text('Running on: \n'),
        ),
      ),
    );
  }
}
