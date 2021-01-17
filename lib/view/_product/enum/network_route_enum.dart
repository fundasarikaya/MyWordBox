enum NetworkRoutes { LOGIN, HOME, WORDS, WORD_ADD, LINES, LINE_ADD }

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return "Kullanicilar";
      case NetworkRoutes.HOME:
        return "Menu";
      case NetworkRoutes.WORDS:
        return "Words";
      case NetworkRoutes.WORD_ADD:
        return "Words";
      case NetworkRoutes.LINES:
        return "Lines";
      case NetworkRoutes.LINE_ADD:
        return "Lines";
      default:
        throw Exception("Routes Not Found");
    }
  }
}
