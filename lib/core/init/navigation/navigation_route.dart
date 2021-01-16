import 'package:MyWordBox/view/kelimeEkle/view/kelime_ekle_view.dart';
import 'package:MyWordBox/view/kelimeler/view/kelime_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:MyWordBox/view/authenticate/login/view/login_view.dart';
import 'package:MyWordBox/view/home/view/home_view.dart';

import '../../../view/authenticate/test/view/test_view.dart';
import '../../components/card/not_found_navigation_widget.dart';
import '../../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.TEST_VIEW:
        return normalNavigate(TestsView());
      case NavigationConstants.HOME_VIEW:
        return normalNavigate(HomeView());
      case NavigationConstants.LOGIN_VIEW:
        return normalNavigate(LoginView());
      case NavigationConstants.KELIME_VIEW:
        return normalNavigate(KelimeView());
      case NavigationConstants.KELIME_EKLE_VIEW:
        return normalNavigate(KelimeEkleView());
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundNavigationWidget(),
        );
    }
  }

  MaterialPageRoute normalNavigate(Widget widget) {
    return MaterialPageRoute(
      builder: (context) => widget,
    );
  }
}
