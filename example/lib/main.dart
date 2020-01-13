import 'dart:io';

import 'package:flutter/material.dart';
import 'package:xfiat_fluttify/xfiat_fluttify.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
	@override
	_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
	@override
	void initState() {
		super.initState();
		// 实例化时传入参数
		SpeechService(
			appID: AppID('5e182aa7'),
		);
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
							print(111);
							SpeechService.createRecognizer(
								Options(
								
								),
							);
						},
					), onPressed: () {},
				),
			),
		);
	}
}
