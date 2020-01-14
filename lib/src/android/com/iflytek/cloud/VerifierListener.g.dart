// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

mixin com_iflytek_cloud_VerifierListener on java_lang_Object {
  

  

  

  @mustCallSuper
  Future<void> onVolumeChanged(int var1, Uint8List var2) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onVolumeChanged::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onBeginOfSpeech() {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onBeginOfSpeech::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onEndOfSpeech() {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onEndOfSpeech::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onResult(com_iflytek_cloud_VerifierResult var1) {
    kNativeObjectPool.add(var1);
  
    if (fluttifyLogEnabled) {
      debugPrint('onResult::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onError(com_iflytek_cloud_SpeechError var1) {
    kNativeObjectPool.add(var1);
  
    if (fluttifyLogEnabled) {
      debugPrint('onError::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onEvent(int var1, int var2, int var3, android_os_Bundle var4) {
    kNativeObjectPool.add(var4);
  
    if (fluttifyLogEnabled) {
      debugPrint('onEvent::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
}