import 'dart:io';

import 'package:mustache_template/mustache.dart';
import 'package:recase/recase.dart';

class ScreenGenerator {
  void generate(String name) {
    final pascal = ReCase(name).pascalCase;
    final snake = ReCase(name).snakeCase;

    final template = File('templates/screen.template.dart').readAsStringSync();

    final output = Template(
      template,
      htmlEscapeValues: false,
    ).renderString({
      'ScreenName': pascal,
    });

    final file = File('lib/screens/${snake}_screen.dart');

    file.createSync(recursive: true);
    file.writeAsStringSync(output);

    print('[OK] Screen Generated');
    print(file.path);
  }
}
