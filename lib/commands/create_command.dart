import 'dart:io';

import 'package:devx/core/project_context.dart';
import 'package:devx/generators/flutter_generator.dart';
import 'package:devx/generators/project_generator.dart';

class CreateCommand {
  final FlutterGenerator _flutter = FlutterGenerator();
  final ProjectGenerator _project = ProjectGenerator();

  Future<void> run(List<String> args) async {
    final ctx = ProjectContext.current();

    if (args.isEmpty) {
      print('Usage: devx create community-app');
      return;
    }

    switch (args.first) {
      case 'community-app':
        print('');
        print('🚀 Creating ${ctx.projectName}...');
        print('');

        if (ctx.isFlutterProject) {
          print('✔ Existing Flutter project detected.');
          print('Skipping flutter create.');

          _project.generate(ctx.path);
        } else {
          await _flutter.generate(ctx.path);
        }

        print('');
        print('✅ Done.');
        break;

      default:
        print('Unknown project type: ${args.first}');
    }
  }
}
