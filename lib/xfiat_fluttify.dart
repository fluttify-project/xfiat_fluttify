library xfiat_fluttify;

import 'package:flutter/widgets.dart';

import './src/android/android.export.g.dart';
import './src/dart/options.dart';
import './src/dart/speech_recognizer.dart';
import './src/dart/types/appid.dart';
import './src/ios/IFlySpeechUtility.g.dart';
import './src/ios/ios.export.g.dart';

export './src/dart/options.dart';
export './src/dart/speech_recognizer.dart'; // ? 有必要导出么
export './src/dart/types/appid.dart';
export './xfiat_fluttify.dart';

part './src/dart/speech_service.dart';
