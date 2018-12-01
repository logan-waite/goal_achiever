abstract class Strings {

  static Strings _instance;

  static Strings get() {
    if (_instance == null) {
      _instance = EnglishStrings();
    }
    return _instance;
  }

  final String appName = "Accomplisher";
}

class EnglishStrings extends Strings {}

class SpanishStrings extends Strings {}