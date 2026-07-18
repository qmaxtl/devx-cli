import 'dart:io';

class WidgetGenerator {
  Future<void> generate(String name) async {
    final file = File('lib/widgets/${name}_widget.dart');
    file.createSync(recursive: true);

    file.writeAsStringSync('''
import 'package:flutter/material.dart';

class ${name}Widget extends StatelessWidget {
  const ${name}Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
''');

    stdout.writeln('Widget generated: ${file.path}');
  }
}
