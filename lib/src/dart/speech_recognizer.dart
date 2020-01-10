import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';

import 'models.dart';

typedef void OnResult(RecognizerResult var1, bool var2);

class SpeechRecognizer {
  final com_iflytek_cloud_SpeechRecognizer _androidModel;
  final IFlySpeechRecognizer _iosModel;

  SpeechRecognizer.android(this._androidModel) : _iosModel = null;

  SpeechRecognizer.ios(this._iosModel) : _androidModel = null;

  Future<void> setParameter(String key, String value) async {
    return platform(
      android: (pool) async {
        _androidModel.setParameter(key, value);
      },
      ios: (pool) async {
        _iosModel.setParameterForKey(key, value);
      },
    );
  }

  Future<void> start({
    ValueChanged<int> onVolumeChanged,
    ValueChanged<SpeechError> onError,
    OnResult onResult,
    VoidCallback onBeginOfSpeech,
    VoidCallback onEndOfSpeech,
  }) async {
    return platform(
      android: (pool) async {
        _androidModel.startListening(_AndroidListener(
          onVolumeChanged,
          onError,
          onResult,
          onBeginOfSpeech,
          onEndOfSpeech,
        ));
      },
      ios: (pool) async {
        _iosModel.set_delegate(_IOSListener(
          onVolumeChanged,
          onError,
          onResult,
          onBeginOfSpeech,
          onEndOfSpeech,
        ));
        _iosModel.startListening();
      },
    );
  }
}

class _AndroidListener extends java_lang_Object
    with com_iflytek_cloud_RecognizerListener {
  final ValueChanged<int> _onVolumeChanged;
  final ValueChanged<SpeechError> _onError;
  final OnResult _onResult;
  final VoidCallback _onBeginOfSpeech;
  final VoidCallback _onEndOfSpeech;

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
      _onVolumeChanged(var1);
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
      _onError(SpeechError.android(var1));
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
      _onEndOfSpeech();
    }
  }

  @override
  Future<void> onBeginOfSpeech() async {
    super.onBeginOfSpeech();
    if (_onBeginOfSpeech != null) {
      _onBeginOfSpeech();
    }
  }
}

class _IOSListener extends NSObject with IFlySpeechRecognizerDelegate {
  final ValueChanged<int> _onVolumeChanged;
  final ValueChanged<SpeechError> _onError;
  final OnResult _onResult;
  final VoidCallback _onBeginOfSpeech;
  final VoidCallback _onEndOfSpeech;

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
      _onError(SpeechError.ios(errorCode));
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
      _onEndOfSpeech();
    }
  }

  @override
  Future<void> onBeginOfSpeech() async {
    super.onBeginOfSpeech();
    if (_onBeginOfSpeech != null) {
      _onBeginOfSpeech();
    }
  }

  @override
  Future<void> onVolumeChanged(int volume) async {
    super.onVolumeChanged(volume);
    if (_onVolumeChanged != null) {
      _onVolumeChanged(volume);
    }
  }

  @override
  Future<void> onResultsIsLast(List<NSObject> results, bool isLast) async {
    super.onResultsIsLast(results, isLast);
    if (_onResult != null) {
      _onResult(RecognizerResult.ios(results), isLast);
    }
  }
}
