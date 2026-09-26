import 'package:first_flutter_project/l10n/app_locale.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localization/flutter_localization.dart';

class FullNameValidator {
  static String? validate(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocale.fullNameRequired.getString(context);
    }
    if (!value.startsWith(value[0].toUpperCase())) {
      return AppLocale.firstLetterCapital.getString(context);
    }
    if (value.length < 2) {
      return AppLocale.fullNameMinLength.getString(context);
    }
    return null;
  }
}

class EmailValidator {
  static String? validate(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocale.emailRequired.getString(context);
    }
    if (!value.contains('@')) {
      return AppLocale.emailAt.getString(context);
    }
    if (!value.contains('.')) {
      return AppLocale.emailDot.getString(context);
    }
    if (value.split('.').length != 2) {
      return AppLocale.emailOneDot.getString(context);
    }
    if (value.split('.').last.length < 2) {
      return AppLocale.emailSuffix.getString(context);
    }
    return null;
  }
}

class PasswordValidator {
  static String? validate(BuildContext context, String? value) {
    if (value == null || value.isEmpty) {
      return AppLocale.passwordRequired.getString(context);
    }
    if (value.length < 6) {
      return AppLocale.passwordMinLength.getString(context);
    }
    return null;
  }
}

class ConfirmPasswordValidator {
  static String? validate(BuildContext context, String? value, String password) {
    if (value == null || value.isEmpty) {
      return AppLocale.confirmPasswordRequired.getString(context);
    }
    if (value != password) {
      return AppLocale.confirmPasswordMatch.getString(context);
    }
    return null;
  }
}
