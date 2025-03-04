import 'package:flutter/material.dart';
import 'package:template_flutter/views/widgets/language_dropdown.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  final Locale selectedLocale;
  final ValueChanged<Locale> onLocaleChanged;

  const AboutPage({
    super.key,
    required this.selectedLocale,
    required this.onLocaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.about ?? 'Home'),
        actions: [
          LanguageDropdown(
            selectedLocale: selectedLocale,
            onLocaleChanged: onLocaleChanged,
          ),
        ],
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Text(localizations?.about ?? 'Hello'),
        ),
      ),
    );
  }
}
