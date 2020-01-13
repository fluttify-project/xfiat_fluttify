///
/// APPID类型
/// 对APPID的判断
///
class AppID {
  /// 讯飞的appid
  String appId;

  AppID(this.appId) {
    if (appId.length != 8) throw new Exception('Invalid Appid');

    this.appId = appId.trim();
  }

  @override
  String toString() {
    return this.appId;
  }
}
