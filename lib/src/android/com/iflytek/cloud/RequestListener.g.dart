// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

mixin com_iflytek_cloud_RequestListener on java_lang_Object {
  

  

  

  @mustCallSuper
  Future<void> onEvent(int var1, android_os_Bundle var2) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onEvent::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onBufferReceived(Uint8List var1) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onBufferReceived::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> onCompleted(com_iflytek_cloud_SpeechError var1) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('onCompleted::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
}