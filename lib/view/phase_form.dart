import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:first_flutter_project/view/parts/form.dart';
import 'package:first_flutter_project/view/parts/language_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localization/flutter_localization.dart';

class PhaseForm extends StatelessWidget {
  const PhaseForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocale.registrationForm.getString(context)),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          const LanguageMenu(),
          IconButton(onPressed: () {
            Navigator.of(context).pop();
          }, icon: Icon(Icons.close)),
        ],
      ),
      body: RegistrationForm(),
    );
  }
}