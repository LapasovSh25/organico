import 'package:flutter/material.dart';
import 'package:organico/view/screens/home_page.dart';
import 'package:organico/view/sing_in_page.dart';
import 'package:organico/view/sing_up_page.dart';
import 'package:organico/view/spalsh_screen.dart';

class RouterGenerator {
  static final RouterGenerator _generator = RouterGenerator._init();
  static RouterGenerator get router => _generator;

  RouterGenerator._init();
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case 'homePage':
        return _navigate(const HomePage());
      case 'singInPage':
        return _navigate(const SingInPage());
      case 'singUpPage':
        return _navigate(const SingUpPage());
      case 'splashScreen':
        return _navigate(const SplashScreen());
    }
  }

  MaterialPageRoute _navigate(Widget widget) {
    return MaterialPageRoute(builder: (context) => widget);
  }
}
