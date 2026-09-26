import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class LanguageMenu extends StatelessWidget {
  const LanguageMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = FlutterLocalization.instance;
    final currentCode = localization.currentLocale?.languageCode;

    return PopupMenuButton<String>(
      tooltip: AppLocale.language.getString(context),
      icon: const Icon(Icons.language),
      onSelected: localization.translate,
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 'en',
          child: Text(currentCode == 'en' ? 'English ✓' : 'English'),
        ),
        PopupMenuItem(
          value: 'ar',
          child: Text(currentCode == 'ar' ? 'العربية ✓' : 'العربية'),
        ),
      ],
    );
  }
}
