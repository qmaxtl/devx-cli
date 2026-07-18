import 'dart:io';

import 'package:mustache_template/mustache.dart';
import 'package:recase/recase.dart';

class WidgetGenerator {
  void generate(String name) {
    final pascal = ReCase(name).pascalCase;
    final snake = ReCase(name).snakeCase;

    final template = File('templates/widget.template.dart').readAsStringSync();

    final output = Template(
      template,
      htmlEscapeValues: false,
    ).renderString({
      'WidgetName': pascal,
    });

    final file = File('lib/widgets/${snake}.dart');

    file.createSync(recursive: true);
    file.writeAsStringSync(output);

    print('[OK] Widget Generated');
    print(file.path);
  }
}
