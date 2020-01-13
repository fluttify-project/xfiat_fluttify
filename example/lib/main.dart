import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xfiat_fluttify/xfiat_fluttify.dart';

void main() {
  runApp(MyApp());
  // 实例化时传入参数
  SpeechService(
    appID: AppID('5e182aa7'),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  SpeechRecognizer _speechRecognizer;
  
  @override
  void initState() {
    super.initState();
    
    /// 初始化识别无UI识别对象
    SpeechService.createRecognizer(options: Options()).then((speechRecognizer) {
      setState(() {
        this._speechRecognizer = speechRecognizer;
      });
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xfiat Fluttify Example APP'),
        ),
        body: Center(
          child: Text('Running on: \n' + Platform.operatingSystem),
        ),
        floatingActionButton: FloatingActionButton(
          child: Listener(
            child: Icon(Icons.mic),
            onPointerDown: (PointerDownEvent event) {
              print('监听到按钮按下的事件');
              this._speechRecognizer.start(
                onBeginOfSpeech: () async {
                  print('开始了');
                },
                onEndOfSpeech: () async {
                  print('结束了');
                },
                onError: (SpeechError error) async {
                  print('报错了');
                  print(error);
                },
                onResult: (RecognizerResult result, bool isSuccess) {
                  print(isSuccess);
                  print(result);
                },
              );
            },
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
