import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  final Locale selectedLocale;
  final ValueChanged<Locale> onLocaleChanged;

  const LanguageDropdown({
    super.key,
    required this.selectedLocale,
    required this.onLocaleChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Locale>(
      underline: SizedBox(),
      icon: const Icon(
        Icons.language,
        color: Colors.white,
      ),
      onChanged: (Locale? locale) {
        if (locale != null) {
          onLocaleChanged(locale);
        }
      },
      items: const [
        DropdownMenuItem(
          value: Locale('en'),
          child: Text('English'),
        ),
        DropdownMenuItem(
          value: Locale('fr'),
          child: Text('Français'),
        ),
      ],
      value: selectedLocale,
    );
  }
}
