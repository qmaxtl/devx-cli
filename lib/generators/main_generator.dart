import 'package:devx/templates/template_manager.dart';

class MainGenerator {
  final TemplateManager templates = TemplateManager();

  void generate(String projectPath, String projectName) {
    var content = templates.read('flutter/main.dart.tpl');

    content = content.replaceAll('{{project_name}}', projectName);

    templates.write(
      projectPath,
      'lib/main.dart',
      content,
    );

    print('✔ main.dart generated.');
  }
}
