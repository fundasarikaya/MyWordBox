import 'dart:io';

import 'package:vexana/vexana.dart';

class VexanaManager {
  static VexanaManager _instace;
  static VexanaManager get instance {
    if (_instace == null) _instace = VexanaManager._init();
    return _instace;
  }

  static const String _iosBaseUrl =
      "https://my-word-box-default-rtdb.firebaseio.com/";
  static const String _androidBaseUrl =
      "https://my-word-box-default-rtdb.firebaseio.com/";

  VexanaManager._init();

  INetworkManager networkManager = NetworkManager(
      isEnableLogger: true,
      options: BaseOptions(
          baseUrl: Platform.isAndroid ? _androidBaseUrl : _iosBaseUrl));
}
