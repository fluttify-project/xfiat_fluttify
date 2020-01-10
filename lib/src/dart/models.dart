import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:xfiat_fluttify/src/ios/IFlySpeechError.g.dart';

class SpeechError {
  final com_iflytek_cloud_SpeechError _androidModel;
  final IFlySpeechError _iosModel;

  SpeechError.android(this._androidModel) : _iosModel = null;

  SpeechError.ios(this._iosModel) : _androidModel = null;
}

class RecognizerResult {
  final com_iflytek_cloud_RecognizerResult _androidModel;
  final List<Object> _iosModel;

  RecognizerResult.android(this._androidModel) : _iosModel = null;

  RecognizerResult.ios(this._iosModel) : _androidModel = null;
}
