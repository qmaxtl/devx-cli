import 'package:devx/templates/template_manager.dart';

class AnalysisGenerator {
  final TemplateManager templates = TemplateManager();

  void generate(String projectPath) {
    templates.write(
      projectPath,
      'analysis_options.yaml',
      templates.read('flutter/analysis_options.yaml.tpl'),
    );

    print('✔ analysis_options.yaml');
  }
}
