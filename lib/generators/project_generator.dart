import 'dart:io';

import 'package:devx/generators/analysis_generator.dart';
import 'package:devx/generators/folder_generator.dart';
import 'package:devx/generators/main_generator.dart';
import 'package:devx/generators/pubspec_generator.dart';

class ProjectGenerator {
  final FolderGenerator folders = FolderGenerator();
  final PubspecGenerator pubspec = PubspecGenerator();
  final MainGenerator main = MainGenerator();
  final AnalysisGenerator analysis = AnalysisGenerator();

  void generate(String projectPath) {
    folders.generate(projectPath);

    pubspec.generate(projectPath);

    final projectName =
        projectPath.split(Platform.pathSeparator).last;

    main.generate(projectPath, projectName);

    analysis.generate(projectPath);

    print('');
    print('✔ Project generation complete.');
  }
}