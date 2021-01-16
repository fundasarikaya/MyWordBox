import 'dart:io';

import 'package:vexana/vexana.dart';

class VexanaManager {
  static VexanaManager _instace;
  static VexanaManager get instance {
    if (_instace == null) _instace = VexanaManager._init();
    return _instace;
  }

  static const String _iosBaseUrl = "http://localhost:3000/";
  static const String _androidBaseUrl =
      "https://kelimeler-b8679-default-rtdb.firebaseio.com/";

  VexanaManager._init();

  INetworkManager networkManager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(
          baseUrl: Platform.isAndroid ? _androidBaseUrl : _iosBaseUrl));
}
