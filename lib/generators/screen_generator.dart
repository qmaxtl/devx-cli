import 'dart:io';

class ScreenGenerator {
  Future<void> generate(String name) async {
    final file = File('lib/screens/${name}_screen.dart');
    file.createSync(recursive: true);

    file.writeAsStringSync('''
import 'package:flutter/material.dart';

class ${name}Screen extends StatelessWidget {
  const ${name}Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("$name Screen"),
      ),
    );
  }
}
''');

    stdout.writeln('Screen generated: ${file.path}');
  }
}
