import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'routes/app_routes.dart';
import 'views/pages/home_page.dart';
import 'views/pages/about_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale('en');

  void changeLanguage(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Template',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      locale: _locale,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''),
        Locale('fr', ''),
      ],
      onGenerateRoute: (settings) {
        if (settings.name == AppRoutes.home) {
          return MaterialPageRoute(
            builder: (context) => HomePage(
              selectedLocale: _locale,
              onLocaleChanged: changeLanguage,
            ),
          );
        } else if (settings.name == AppRoutes.about) {
          return MaterialPageRoute(
            builder: (context) => AboutPage(
              selectedLocale: _locale,
              onLocaleChanged: changeLanguage,
            ),
          );
        }
        return AppRoutes.generateRoute(settings);
      },
      initialRoute: AppRoutes.home,
    );
  }
}
