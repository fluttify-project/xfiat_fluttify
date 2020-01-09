//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package com.fluttify.xfiat_fluttify;

import android.content.Context;
import android.view.View;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;

@SuppressWarnings("ALL")
class akFactory extends PlatformViewFactory {

    akFactory(BinaryMessenger messenger) {
        super(StandardMessageCodec.INSTANCE);

        this.messenger = messenger;

        new MethodChannel(messenger, "com.fluttify/xfiat_fluttify/com_iflytek_thirdparty_ak").setMethodCallHandler((methodCall, methodResult) -> {
                    Map<String, Object> args = (Map<String, Object>) methodCall.arguments;
                    XfiatFluttifyPlugin.Handler handler = handlerMap.get(methodCall.method);
                    if (handler != null) {
                        try {
                            handler.call(args, methodResult);
                        } catch (Exception e) {
                            e.printStackTrace();
                            methodResult.error(e.getMessage(), null, null);
                        }
                    } else {
                        methodResult.notImplemented();
                    }
                });
    }

    private BinaryMessenger messenger;

    private final Map<String, XfiatFluttifyPlugin.Handler> handlerMap = new HashMap<String, XfiatFluttifyPlugin.Handler>() {{
        // method
        put("com.iflytek.thirdparty.ak::setVolume", (args, methodResult) -> {
            // args
            // jsonable arg
            int var1 = (int) args.get("var1");
        
            // ref
            int refId = (int) args.get("refId");
            com.iflytek.thirdparty.ak ref = (com.iflytek.thirdparty.ak) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.iflytek.thirdparty.ak@" + refId + "::setVolume(" + var1 + ")");
            }
        
            // invoke native method
            try {
                ref.setVolume(var1);
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // result
            methodResult.success("success");
        });
        // method
        put("com.iflytek.thirdparty.ak::finalize", (args, methodResult) -> {
            // args
        
        
            // ref
            int refId = (int) args.get("refId");
            com.iflytek.thirdparty.ak ref = (com.iflytek.thirdparty.ak) getHEAP().get(refId);
        
            // print log
            if (getEnableLog()) {
                Log.d("fluttify-java", "fluttify-java: com.iflytek.thirdparty.ak@" + refId + "::finalize(" + "" + ")");
            }
        
            // invoke native method
            try {
                ref.finalize();
            } catch (Throwable throwable) {
                throwable.printStackTrace();
                if (getEnableLog()) {
                    Log.d("Current HEAP: ", getHEAP().toString());
                }
                methodResult.error(throwable.getMessage(), null, null);
                return;
            }
        
            // result
            methodResult.success("success");
        });
    }};

    @Override
    public PlatformView create(Context context, int id, Object params) {
        Map<String, Object> args = (Map<String, Object>) params;
        

        com.iflytek.thirdparty.ak view = new com.iflytek.thirdparty.ak(context);
        getHEAP().put(id, view);
        return new PlatformView() {

            // add to HEAP
            @Override
            public View getView() {
                return view;
            }

            @Override
            public void dispose() {}
        };
    }
}