// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

mixin IFlySpeechEvaluatorDelegate on NSObject {
  

  

  

  @mustCallSuper
  Future<void> onVolumeChangedBuffer(int volume, NSData buffer) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onVolumeChangedBuffer::kNativeObjectPool: $kNativeObjectPool');
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
  Future<void> onCancel() {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onCancel::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onCompleted(IFlySpeechError errorCode) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onCompleted::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onResultsIsLast(NSData results, bool isLast) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onResultsIsLast::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
}