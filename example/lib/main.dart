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

  // int _speechState = 0;
  String _content = "";

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
	        child: Text('Running on: \n' + Platform.operatingSystem + '\n' +
			        this._content),
        ),
        floatingActionButton: FloatingActionButton(
          child: Listener(
            child: Icon(Icons.mic),
	          onPointerDown: (PointerDownEvent event) async {
              if (this._speechRecognizer == null) return;

              await this._speechRecognizer.requestPermission();

              setState(() {
	              this._content = '监听到按钮按下的事件';
              });
              
              this._speechRecognizer.start(
                onVolumeChanged: (int volume) async {
	                setState(() {
		                this._content = '音量现在是' + volume.toString();
	                });
                },
                onBeginOfSpeech: () async {
	                print('开始识别');
	                setState(() {
		                this._content = '开始识别';
	                });
                },
                onEndOfSpeech: () async {
	                print('识别结束');
	                setState(() {
		                this._content = '识别结束';
	                });
                },
                onError: (SpeechError error) async {
	                print('识别出错');
	                setState(() {
		                this._content = '识别出错';
	                });
                  print(error);
                },
                onResult: (RecognizerResult result, bool isSuccess) {
                  print('成功了');
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
