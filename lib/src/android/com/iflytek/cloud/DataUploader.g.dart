// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:xfiat_fluttify/src/ios/ios.export.g.dart';
import 'package:xfiat_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

class com_iflytek_cloud_DataUploader extends java_lang_Object  {
  //region constants
  
  //endregion

  //region creators
  static Future<com_iflytek_cloud_DataUploader> create__android_content_Context(android_content_Context var1) async {
    final int refId = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('ObjectFactory::createcom_iflytek_cloud_DataUploader__android_content_Context', {"var1": var1.refId});
    final object = com_iflytek_cloud_DataUploader()..refId = refId..tag = 'xfiat_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  Future<int> uploadData(com_iflytek_cloud_SpeechListener var1, String var2, Uint8List var3) async {
    // print log
    if (fluttifyLogEnabled) {
      print('fluttify-dart: com.iflytek.cloud.DataUploader@$refId::uploadData([\'var2\':$var2, \'var3\':$var3])');
    }
  
    // invoke native method
    final result = await MethodChannel('com.fluttify/xfiat_fluttify').invokeMethod('com.iflytek.cloud.DataUploader::uploadData', {"var2": var2, "var3": var3, "refId": refId});
  
  
    // handle native call
    MethodChannel('com.iflytek.cloud.DataUploader::uploadData::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.iflytek.cloud.SpeechListener::onEvent':
              // print log
              if (fluttifyLogEnabled) {
                print('fluttify-dart-callback: onEvent([\'var1\':$args[var1]])');
              }
        
              // handle the native call
              var1?.onEvent(args['var1'], android_os_Bundle()..refId = (args['var2'])..tag = 'xfiat_fluttify');
              break;
            case 'Callback::com.iflytek.cloud.SpeechListener::onBufferReceived':
              // print log
              if (fluttifyLogEnabled) {
                print('fluttify-dart-callback: onBufferReceived([\'var1\':$args[var1]])');
              }
        
              // handle the native call
              var1?.onBufferReceived(args['var1']);
              break;
            case 'Callback::com.iflytek.cloud.SpeechListener::onCompleted':
              // print log
              if (fluttifyLogEnabled) {
                print('fluttify-dart-callback: onCompleted([])');
              }
        
              // handle the native call
              var1?.onCompleted(com_iflytek_cloud_SpeechError()..refId = (args['var1'])..tag = 'xfiat_fluttify');
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (result == null) {
      return null;
    } else {
    
      return result;
    }
  }
  
  //endregion
}