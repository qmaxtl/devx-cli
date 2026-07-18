import 'dart:io';

class FolderGenerator {
  static const _folders = [
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

  void generate(String projectPath) {
    for (final folder in _folders) {
      Directory('$projectPath${Platform.pathSeparator}$folder')
          .createSync(recursive: true);

      print('✓ $folder');
    }

    print('');
    print('✔ Folder structure generated.');
  }
}
