import 'package:devx/generators/folder_generator.dart';
import 'package:devx/generators/pubspec_generator.dart';

class ProjectGenerator {
  final FolderGenerator folders = FolderGenerator();
  final PubspecGenerator pubspec = PubspecGenerator();

  void generate(String projectPath) {
    folders.generate(projectPath);
    pubspec.generate(projectPath);

    print('');
    print('✔ Project generation complete.');
  }
}
