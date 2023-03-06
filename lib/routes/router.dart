import 'package:flutter/material.dart';
import 'package:organico/view/auth/sing_in_page.dart';
import 'package:organico/view/pages/bottomNavigationBar.dart';
import 'package:organico/view/pages/coupons_page.dart';
import 'package:organico/view/pages/info_page.dart';
import '../view/auth/sing_up_page.dart';
import '../view/auth/spalsh_screen.dart';
import '../view/pages/vegatables_category_page.dart';
import '../view/screens/home_screen.dart';

class RouterGenerator {
  static final RouterGenerator _generator = RouterGenerator._init();
  static RouterGenerator get router => _generator;

  RouterGenerator._init();
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case 'homePage':
        return _navigate(const MainPage());
      case 'singInPage':
        return _navigate(const SingInPage());
      case 'singUpPage':
        return _navigate(const SingUpPage());
      case 'splashScreen':
        return _navigate(const SplashScreen());
      case 'NavigationBarPage':
        return _navigate(HomePage());
      case 'InfoPage':
        return _navigate(const InfoPage());
      case 'VegatablesPage':
        return _navigate(const VegetablesPage());
      case 'CuponsPage':
        return _navigate(const CuponsPage());
    }
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
