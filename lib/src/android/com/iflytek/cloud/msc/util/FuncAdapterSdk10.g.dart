// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_iflytek_cloud_msc_util_FuncAdapterSdk10 extends java_lang_Object  {
  //region constants
  
  //endregion

  //region creators
  static Future<com_iflytek_cloud_msc_util_FuncAdapterSdk10> create__() async {
    final int refId = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('ObjectFactory::createcom_iflytek_cloud_msc_util_FuncAdapterSdk10__');
    final object = com_iflytek_cloud_msc_util_FuncAdapterSdk10()..refId = refId..tag = 'xfiat_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  Future<void> avoidSystemError(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.msc.util.FuncAdapterSdk10@$refId::avoidSystemError([\'var1\':$var1])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.msc.util.FuncAdapterSdk10::avoidSystemError', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  static Future<void> CloseHardWareAccelerate(android_view_View var0) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.msc.util.FuncAdapterSdk10::CloseHardWareAccelerate([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.msc.util.FuncAdapterSdk10::CloseHardWareAccelerate', {"var0": var0.refId});
  
  
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