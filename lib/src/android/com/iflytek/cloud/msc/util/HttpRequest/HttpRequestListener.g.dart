// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

mixin com_iflytek_cloud_msc_util_HttpRequest_HttpRequestListener on java_lang_Object {
  

  

  

  @mustCallSuper
  Future<void> onResult(com_iflytek_cloud_msc_util_HttpRequest var1, Uint8List var2) {
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
  
}