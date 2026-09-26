class FullNameValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Full Name is required';
    }
    if (!value.startsWith(value[0].toUpperCase())) {
      return 'First letter must be capital';
    }
    if (value.length < 2) {
      return 'Full Name must be at least 2 characters long';
    }
    return null;
  }
}

class EmailValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    if (!value.contains('@')) {
      return 'Email must contain @';
    }
    if (!value.contains('.')) {
      return 'Email must contain .';
    }
    if (value.split('.').length != 2) {
      return 'Email must contain only one .';
    }
    if (value.split('.').last.length < 2) {
      return 'Email must contain at least 2 characters after the .';
    }
    return null;
  }
}

class PasswordValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    return null;
  }
}

class ConfirmPasswordValidator {
  static String? validate(String? value, String password) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required';
    }
    if (value != password) {
      return 'Confirm Password must match Password';
    }
    return null;
  }
}