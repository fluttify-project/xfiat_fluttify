import 'package:xfiat_fluttify/src/dart/types/language.dart';
import 'package:xfiat_fluttify/src/dart/types/result_type.dart';
import 'package:xfiat_fluttify/src/dart/types/sample_rate.dart';
import 'package:xfiat_fluttify/src/dart/types/vad_time.dart';

///
/// 配置
///
class Options {
  /// 是否启用UI样式
  final bool enableUI;

  /// 输入语言，默认'zh-cn'
  final Language inputLanguage;

  /// 前端点检测
  /// 开始录入音频后，音频后面部分最长静音时长，取值范围[0,10000ms]，默认值5000ms
  final VadTime vadBos;

  /// 后端点检测
  /// 开始录入音频后，音频后面部分最长静音时长，取值范围[0,10000ms]，默认值1800ms
  final VadTime vadEos;

  /// 采样率
  /// 支持：8KHZ,16KHZ
  final SampleRate sampleRate;

  /// 返回结果格式，默认plain
  final ResultType resultType;

  /// 是否启用数字结果倾向
  final bool nunum;

  /// 是否启用标点符号
  final bool chinesePtt;

  /// 构造方法
  Options({
    this.enableUI = false,
    this.inputLanguage = Language.zh_cn,
    this.vadBos,
    this.vadEos,
    this.sampleRate = SampleRate.Sixteen,
    this.resultType = ResultType.plain,
    this.nunum = false,
    this.chinesePtt = true,
  });

  /// 转化为map类型
  Map<String, String> toMap() => {
        //设置语法ID和 SUBJECT 为空，以免因之前有语法调用而设置了此参数；或直接清空所有参数，具体可参考 DEMO 的示例。
        "cloud_grammar": null,
        "subject": null,
        "result_type": typeMap(this.resultType),
        "language": language(this.inputLanguage),
        "accept": "mandarin",
        "vad_bos":
            !this.vadBos.isEmpty ? this.vadBos.toString() : 5000.toString(),
        "vad_eos":
            !this.vadEos.isEmpty ? this.vadEos.toString() : 1800.toString(),
        "sample_rate": rate(this.sampleRate),
        "nunum": (this.nunum ? 1 : 0).toString(),
        "ptt": (this.chinesePtt ? 1 : 0).toString(),
      };
}
