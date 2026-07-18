class Validators {
  static bool isValidName(String value) {
    final regex = RegExp(r'^[a-z][a-z0-9_]*$');
    return regex.hasMatch(value);
  }

  static bool isNotEmpty(String value) {
    return value.trim().isNotEmpty;
  }
}
