import 'dart:io';

import 'package:devx/generators/project_generator.dart';

class FlutterGenerator {
  final ProjectGenerator project = ProjectGenerator();

  Future<void> generate(String projectPath) async {
    final result = await Process.run(
      r'C:\src\flutter\bin\flutter.bat',
      ['create', '.'],
      workingDirectory: projectPath,
      runInShell: true,
    );

    stdout.write(result.stdout);
    stderr.write(result.stderr);

    if (result.exitCode != 0) {
      throw Exception('Flutter project creation failed.');
    }

    project.generate(projectPath);
  }
}
