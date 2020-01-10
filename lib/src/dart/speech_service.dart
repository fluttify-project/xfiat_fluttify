import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:xfiat_fluttify/src/ios/IFlySpeechUtility.g.dart';

class SpeechService {
  Future<void> init() async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_iflytek_cloud_SpeechUtility.createUtility(
            context, com_iflytek_cloud_SpeechConstant.APPID + '=5de4a580');
      },
      ios: (pool) async {
        await IFlySpeechUtility.createUtility('appid=5de4a580');
      },
    );
  }
}
