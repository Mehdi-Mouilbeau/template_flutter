import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../widgets/app_drawer.dart';
import '../widgets/language_dropdown.dart';

class HomePage extends StatelessWidget {
  final Locale selectedLocale;
  final ValueChanged<Locale> onLocaleChanged;

  const HomePage({
    super.key,
    required this.selectedLocale,
    required this.onLocaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(localizations?.home ?? 'Home'),
        actions: [
          LanguageDropdown(
            selectedLocale: selectedLocale,
            onLocaleChanged: onLocaleChanged,
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Center(
          child: Text(localizations?.hello ?? 'Hello!'),
        ),
      ),
    );
  }
}
