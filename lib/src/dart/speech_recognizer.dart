import 'dart:typed_data';

import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:xfiat_fluttify/src/dart/options.dart';
import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';

import 'models.dart';

typedef void OnResult(RecognizerResult var1, bool var2);

///
/// 识别器
///
class SpeechRecognizer {
  final com_iflytek_cloud_SpeechRecognizer _androidModel;
  final IFlySpeechRecognizer _iosModel;

  SpeechRecognizer.android(this._androidModel) : _iosModel = null;

  SpeechRecognizer.ios(this._iosModel) : _androidModel = null;

  /// 添加识别参数
  Future<void> setParameter(String key, String value) async {
    return platform(
      android: (pool) => _androidModel.setParameter(key, value),
      ios: (pool) => _iosModel.setParameterForKey(key, value),
    );
  }

  /// 批量赋值
  Future<void> setParameters(Options _options) async {
    if (_options == null) _options = Options();
  
    _options.toMap().forEach((key, value) async {
      await this.setParameter(key, value);
    });
  }

  /// 开始识别
  Future<void> start({
    FutureValueChanged<int> onVolumeChanged, // 调整音量
    FutureValueChanged<SpeechError> onError, // 报错
    OnResult onResult, // 返回结果
    FutureVoidCallback onBeginOfSpeech, // 开始说话
    FutureVoidCallback onEndOfSpeech, // 结束说话
  }) async {
    return platform(
      android: (pool) async {
        await _androidModel.startListening(
          _AndroidListener(
            onVolumeChanged,
            onError,
            onResult,
            onBeginOfSpeech,
            onEndOfSpeech,
          ),
        );
      },
      ios: (pool) async {
        await _iosModel.set_delegate(
          _IOSListener(
            onVolumeChanged,
            onError,
            onResult,
            onBeginOfSpeech,
            onEndOfSpeech,
          ),
        );
        await _iosModel.startListening();
      },
    );
  }
}

class _AndroidListener extends java_lang_Object
    with com_iflytek_cloud_RecognizerListener {
  final FutureValueChanged<int> _onVolumeChanged;
  final FutureValueChanged<SpeechError> _onError;
  final OnResult _onResult;
  final FutureVoidCallback _onBeginOfSpeech;
  final FutureVoidCallback _onEndOfSpeech;

  _AndroidListener(
    this._onVolumeChanged,
    this._onError,
    this._onResult,
    this._onBeginOfSpeech,
    this._onEndOfSpeech,
  );

  @override
  Future<void> onVolumeChanged(int var1, Uint8List var2) async {
    super.onVolumeChanged(var1, var2);
    if (_onVolumeChanged != null) {
      await _onVolumeChanged(var1);
    }
  }

  @override
  Future<void> onEvent(
    int var1,
    int var2,
    int var3,
    android_os_Bundle var4,
  ) async {
    super.onEvent(var1, var2, var3, var4);
  }

  @override
  Future<void> onError(com_iflytek_cloud_SpeechError var1) async {
    super.onError(var1);
    if (_onError != null) {
      await _onError(SpeechError.android(var1));
    }
  }

  @override
  Future<void> onResult(
    com_iflytek_cloud_RecognizerResult var1,
    bool var2,
  ) async {
    super.onResult(var1, var2);
    if (_onResult != null) {
      _onResult(RecognizerResult.android(var1), var2);
    }
  }

  @override
  Future<void> onEndOfSpeech() async {
    super.onEndOfSpeech();
    if (_onEndOfSpeech != null) {
      await _onEndOfSpeech();
    }
  }

  @override
  Future<void> onBeginOfSpeech() async {
    super.onBeginOfSpeech();
    if (_onBeginOfSpeech != null) {
      await _onBeginOfSpeech();
    }
  }
}

class _IOSListener extends NSObject with IFlySpeechRecognizerDelegate {
  final FutureValueChanged<int> _onVolumeChanged;
  final FutureValueChanged<SpeechError> _onError;
  final OnResult _onResult;
  final FutureVoidCallback _onBeginOfSpeech;
  final FutureVoidCallback _onEndOfSpeech;

  _IOSListener(
    this._onVolumeChanged,
    this._onError,
    this._onResult,
    this._onBeginOfSpeech,
    this._onEndOfSpeech,
  );

  @override
  Future<void> onCompleted(IFlySpeechError errorCode) async {
    super.onCompleted(errorCode);
    if (_onError != null) {
      await _onError(SpeechError.ios(errorCode));
    }
  }

  @override
  Future<void> onEventArg0arg1data(
      int eventType, int arg0, int arg1, NSData eventData) async {
    super.onEventArg0arg1data(eventType, arg0, arg1, eventData);
  }

  @override
  Future<void> onCancel() async {
    super.onCancel();
  }

  @override
  Future<void> onEndOfSpeech() async {
    super.onEndOfSpeech();
    if (_onEndOfSpeech != null) {
      await _onEndOfSpeech();
    }
  }

  @override
  Future<void> onBeginOfSpeech() async {
    super.onBeginOfSpeech();
    if (_onBeginOfSpeech != null) {
      await _onBeginOfSpeech();
    }
  }

  @override
  Future<void> onVolumeChanged(int volume) async {
    super.onVolumeChanged(volume);
    if (_onVolumeChanged != null) {
      await _onVolumeChanged(volume);
    }
  }

  @override
  Future<void> onResultsIsLast(List<NSObject> results, bool isLast) async {
    super.onResultsIsLast(results, isLast);
    if (_onResult != null) {
      await _onResult(RecognizerResult.ios(results), isLast);
    }
  }
}
