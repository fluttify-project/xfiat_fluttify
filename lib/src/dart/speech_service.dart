import 'package:xfiat_fluttify/src/android/android.export.g.dart';

class SpeechService {
  Future<void> init() async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        com_iflytek_cloud_SpeechUtility.createUtility(context, 'var1');
      },
      ios: (pool) async {},
    );
  }
}
