import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';

import 'speech_recognizer.dart';

class SpeechService {
  SpeechService._();

  /// 初始化
  static Future<void> init(String appId) async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_iflytek_cloud_SpeechUtility.createUtility(
            context, com_iflytek_cloud_SpeechConstant.APPID + '=$appId');
      },
      ios: (pool) async {
        await IFlySpeechUtility.createUtility('appid=$appId');
      },
    );
  }

  /// 创建识别器
  static Future<SpeechRecognizer> createRecognizer() async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        final recognizer = await com_iflytek_cloud_SpeechRecognizer
            .createRecognizer(context, _AndroidListener());
        return SpeechRecognizer.android(recognizer);
      },
      ios: (pool) async {
        final recognizer = await IFlySpeechRecognizer.sharedInstance();
        return SpeechRecognizer.ios(recognizer);
      },
    );
  }
}

class _AndroidListener extends java_lang_Object
    with com_iflytek_cloud_InitListener {
  @override
  Future<void> onInit(int var1) async {
    super.onInit(var1);
  }
}
