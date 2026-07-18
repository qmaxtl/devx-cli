import '../templates/registry.dart';

class TemplateService {
  const TemplateService();

  List<String> list() {
    return TemplateRegistry.templates;
  }

  bool exists(String name) {
    return TemplateRegistry.templates.contains(name);
  }

  void validate(String name) {
    if (!exists(name)) {
      throw ArgumentError('Unknown template: $name');
    }
  }
}
