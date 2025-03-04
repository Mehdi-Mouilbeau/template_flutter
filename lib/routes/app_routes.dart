import 'package:flutter/material.dart';
import 'package:template_flutter/views/pages/about_page.dart';
import '../views/pages/home_page.dart';

class AppRoutes {
  static const String home = '/';
  static const String about = '/about';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case home:
        return MaterialPageRoute(
            builder: (_) => HomePage(
                  selectedLocale: Locale('fr'),
                  onLocaleChanged: (locale) {},
                ));
      case about:
        return MaterialPageRoute(
            builder: (_) => AboutPage(
                  selectedLocale: Locale('fr'),
                  onLocaleChanged: (locale) {},
                ));
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
