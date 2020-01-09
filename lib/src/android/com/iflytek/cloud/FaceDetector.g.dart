// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_iflytek_cloud_FaceDetector extends java_lang_Object  {
  //region constants
  
  //endregion

  //region creators
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  static Future<com_iflytek_cloud_FaceDetector> createDetector(android_content_Context var0, String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.FaceDetector::createDetector([\'var1\':$var1])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.FaceDetector::createDetector', {"var0": var0.refId, "var1": var1});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_iflytek_cloud_FaceDetector()..refId = result..tag = 'xfiat_fluttify');
      return com_iflytek_cloud_FaceDetector()..refId = result..tag = 'xfiat_fluttify';
    }
  }
  
  static Future<com_iflytek_cloud_FaceDetector> getDetector() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.FaceDetector::getDetector([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.FaceDetector::getDetector', );
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(com_iflytek_cloud_FaceDetector()..refId = result..tag = 'xfiat_fluttify');
      return com_iflytek_cloud_FaceDetector()..refId = result..tag = 'xfiat_fluttify';
    }
  }
  
  Future<String> detectARGB(android_graphics_Bitmap var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.FaceDetector@$refId::detectARGB([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.FaceDetector::detectARGB', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> detectGray(android_graphics_Bitmap var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.FaceDetector@$refId::detectGray([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.FaceDetector::detectGray', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> trackNV21(Uint8List var1, int var2, int var3, int var4, int var5) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.FaceDetector@$refId::trackNV21([\'var1\':$var1, \'var2\':$var2, \'var3\':$var3, \'var4\':$var4, \'var5\':$var5])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.FaceDetector::trackNV21', {"var1": var1, "var2": var2, "var3": var3, "var4": var4, "var5": var5, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  //endregion
}