part of "../../xfiat_fluttify.dart";

///
/// 科大讯飞语音听写服务入口
///
class SpeechService {
  /// 传入的appid
  final AppID appID;
  
  SpeechService({@required this.appID}) {
    this.init();
  }
  
  ///
  /// 初始化
  ///
  Future<void> init() async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        await com_iflytek_cloud_SpeechUtility.createUtility(
          context,
          // 申请地址：http://www.xfyun.cn
          com_iflytek_cloud_SpeechConstant.APPID + '=' + this.appID.toString(),
        );
      }, // android 平台处理
      ios: (pool) async {
        await IFlySpeechUtility.createUtility(
          'appid' '=' + this.appID.toString(),
        );
      }, // ios 平台处理
    );
  }
  
  ///
  /// 创建识别器
  ///
  static Future<SpeechRecognizer> createRecognizer(Options options) async {
    return platform(
      android: (pool) async {
        final context = await android_app_Application.get();
        final recognizer =
        await com_iflytek_cloud_SpeechRecognizer.createRecognizer(
          context,
          _AndroidListener(),
        );
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
