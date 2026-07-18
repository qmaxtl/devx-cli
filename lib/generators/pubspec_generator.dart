import 'dart:io';

import 'package:devx/templates/template_manager.dart';

class PubspecGenerator {
  final TemplateManager templates = TemplateManager();

  void generate(String projectPath) {
    final pubspec = File('$projectPath${Platform.pathSeparator}pubspec.yaml');

    if (!pubspec.existsSync()) {
      print('pubspec.yaml not found.');
      return;
    }

    final original = pubspec.readAsStringSync();

    final template =
        templates.read('flutter${Platform.pathSeparator}pubspec.yaml.tpl');

    final depsStart = original.indexOf('dependencies:');
    final flutterStart = original.indexOf('flutter:');

    if (depsStart == -1 || flutterStart == -1) {
      print('Unable to patch pubspec.');
      return;
    }

    final before = original.substring(0, depsStart);
    final after = original.substring(flutterStart);

    pubspec.writeAsStringSync('$before$template\n$after');

    print('✓ pubspec.yaml');
  }
}
