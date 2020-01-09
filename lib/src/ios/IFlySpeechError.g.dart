// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class IFlySpeechError extends NSObject  {
  //region constants
  
  //endregion

  //region creators
  static Future<IFlySpeechError> create__() async {
    final int refId = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('ObjectFactory::createIFlySpeechError');
    final object = IFlySpeechError()..refId = refId..tag = 'xfiat_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  //endregion

  //region getters
  Future<int> get_errorCode() async {
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod("IFlySpeechError::get_errorCode", {'refId': refId});
  
    return result;
  }
  
  Future<int> get_errorType() async {
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod("IFlySpeechError::get_errorType", {'refId': refId});
  
    return result;
  }
  
  Future<String> get_errorDesc() async {
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod("IFlySpeechError::get_errorDesc", {'refId': refId});
  
    return result;
  }
  
  //endregion

  //region setters
  Future<void> set_errorCode(int errorCode) async {
    await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::set_errorCode', {'refId': refId, "errorCode": errorCode});
  
  
  }
  
  Future<void> set_errorType(int errorType) async {
    await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::set_errorType', {'refId': refId, "errorType": errorType});
  
  
  }
  
  Future<void> set_errorDesc(String errorDesc) async {
    await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::set_errorDesc', {'refId': refId, "errorDesc": errorDesc});
  
  
  }
  
  //endregion

  //region methods
  static Future<IFlySpeechError> initWithError(int errorCode) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: IFlySpeechError::initWithError([\'errorCode\':$errorCode])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::initWithError', {"errorCode": errorCode});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
      kNativeObjectPool.add(IFlySpeechError()..refId = result..tag = 'xfiat_fluttify');
      return IFlySpeechError()..refId = result..tag = 'xfiat_fluttify';
    }
  }
  
  Future<int> errorCode() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: IFlySpeechError@$refId::errorCode([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::errorCode', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  Future<String> errorDesc() async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: IFlySpeechError@$refId::errorDesc([])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('IFlySpeechError::errorDesc', {"refId": refId});
  
  
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