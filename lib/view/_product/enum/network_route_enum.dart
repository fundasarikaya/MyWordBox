enum NetworkRoutes { LOGIN, HOME, KELIME, KELIME_EKLE }

extension NetwrokRoutesString on NetworkRoutes {
  String get rawValue {
    switch (this) {
      case NetworkRoutes.LOGIN:
        return "Kullanicilar";
      case NetworkRoutes.HOME:
        return "Menu";
      case NetworkRoutes.KELIME:
        return "Kelimeler";
      case NetworkRoutes.KELIME_EKLE:
        return "Kelimeler";
      default:
        throw Exception("Routes Not Found");
    }
  }
}
