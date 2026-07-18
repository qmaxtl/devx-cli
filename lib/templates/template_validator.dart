import 'dart:io';

class TemplateValidator {
  bool validate(String name) {
    if (name.trim().isEmpty) {
      throw ArgumentError('Template name cannot be empty.');
    }
    return true;
  }
}
