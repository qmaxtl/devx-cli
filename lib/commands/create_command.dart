import 'dart:io';

import 'package:devx/core/project_context.dart';
import 'package:devx/generators/pubspec_generator.dart';

class CreateCommand {
  void run(List<String> args) async {
    final ctx = ProjectContext.current();

    if (args.isEmpty) {
      print('Usage: devx create community-app');
      return;
    }

    switch (args.first) {
      case 'community-app':
        await _createCommunityApp(ctx);
        break;

      default:
        print('Unknown project type: ${args.first}');
    }
  }

  Future<void> _createCommunityApp(ProjectContext ctx) async {
    print('');
    print('🚀 Creating ${ctx.projectName}...');
    print('');

    if (ctx.isFlutterProject) {
      print('✔ Existing Flutter project detected.');
      print('Skipping flutter create.');
      return;
    }

    final result = await Process.run(
      r'C:\src\flutter\bin\flutter.bat',
      ['create', '.'],
      workingDirectory: ctx.path,
      runInShell: true,
    );

    stdout.write(result.stdout);
    stderr.write(result.stderr);

    if (result.exitCode != 0) {
      print('Flutter project creation failed.');
      return;
    }

    final folders = [
      'assets/images',
      'assets/icons',
      'assets/fonts',
      'lib/core',
      'lib/config',
      'lib/theme',
      'lib/models',
      'lib/services',
      'lib/utils',
      'lib/widgets',
      'lib/features/auth',
      'lib/features/home',
      'lib/features/chat',
      'lib/features/profile',
      'lib/features/community',
      'lib/features/events',
      'lib/features/jobs',
      'lib/features/business',
    ];

    for (final folder in folders) {
      Directory('${ctx.path}${Platform.pathSeparator}$folder')
          .createSync(recursive: true);
      print('✓ $folder');
    }

    PubspecGenerator().generate(ctx.path);

    print('');
    print('✅ Base Structure Ready');
  }
}


