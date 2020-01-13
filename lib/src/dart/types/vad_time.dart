///
/// 端点检测最长时长
///
class VadTime {
  final int vad;

  VadTime(this.vad) {
    if (this.vad > 10000 || this.vad < 0)
      throw new Exception(
          'Invalid vad! Avaliable range of vad is [0 ~ 10000] ms');
  }

  @override
  String toString() => this.vad.toString();

  int toInt() => this.vad.toInt();

  bool get isEmpty => this.vad == null;
}
