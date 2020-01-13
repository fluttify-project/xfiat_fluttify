/// 采样率
enum SampleRate {
  Eight,
  Sixteen,
}

/// 采样率映射
String rate(SampleRate _rate) => {
      SampleRate.Eight: "8000",
      SampleRate.Sixteen: "16000",
    }[_rate];
