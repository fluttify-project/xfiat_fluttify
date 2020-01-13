/// 输入语言
enum Language {
  zh_cn,
  en_us,
}

/// 输入语言映射
String language(Language _language) => {
      Language.zh_cn: "zh_cn",
      Language.en_us: "en_us",
    }[_language];
