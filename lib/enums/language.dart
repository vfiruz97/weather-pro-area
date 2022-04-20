enum Language { en, ru }

extension LanguageExtension on Language {
  String get value {
    switch (this) {
      case Language.en:
        return 'en';
      case Language.ru:
        return 'ru';
      default:
        return 'en';
    }
  }
}
