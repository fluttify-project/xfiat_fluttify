/// 返回结果格式
enum ResultType {
  json,
  xml,
  plain,
}

/// 返回类型格式映射
String typeMap(ResultType type) => {
      ResultType.json: "json",
      ResultType.xml: "xml",
      ResultType.plain: "plain",
    }[type];
