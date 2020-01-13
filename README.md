# XFiat_Fluttify

科大讯飞【语音听写】功能的 Flutter 组件

## Getting Started

1. 检查、添加用户权限
	* Android 
	
	  ```
	  <!--连接网络权限，用于执行云端语音能力 -->
	  <uses-permission android:name="android.permission.INTERNET"/>
	  <!--获取手机录音机使用权限，听写、识别、语义理解需要用到此权限 -->
	  <uses-permission android:name="android.permission.RECORD_AUDIO"/>
	  <!--读取网络信息状态 -->
	  <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
	  <!--获取当前wifi状态 -->
	  <uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
	  <!--允许程序改变网络连接状态 -->
	  <uses-permission android:name="android.permission.CHANGE_NETWORK_STATE"/>
	  <!--读取手机信息权限 -->
	  <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
	  <!--读取联系人权限，上传联系人需要用到此权限 -->
	  <uses-permission android:name="android.permission.READ_CONTACTS"/>
	  <!--外存储写权限，构建语法需要用到此权限 -->
	  <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
	  <!--外存储读权限，构建语法需要用到此权限 -->
	  <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>
	  <!--配置权限，用来记录应用配置信息 -->
	  <uses-permission android:name="android.permission.WRITE_SETTINGS"/>
	  <!--手机定位信息，用来为语义等功能提供定位，提供更精准的服务-->
	  <!--定位信息是敏感信息，可通过Setting.setLocationEnable(false)关闭定位请求 -->
	  <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
	  <!--如需使用人脸识别，还要添加：摄相头权限，拍照需要用到 -->
	  <uses-permission android:name="android.permission.CAMERA" />
	  ```
	
	* iOS
2. 
