import 'dart:io';

class CreateCommand {
  void run(List<String> args) async {
    if (args.isEmpty) {
      print('Usage: devx create community-app');
      return;
    }

    switch (args.first) {
      case 'community-app':
        await _createCommunityApp();
        break;

      default:
        print('Unknown project type: ${args.first}');
    }
  }

  Future<void> _createCommunityApp() async {
    print('');
    print('🚀 Creating Mahuri Connect...');
    print('');

    final result = await Process.run(
      'flutter',
      [
        'create',
        '.',
      ],
    );

    stdout.write(result.stdout);
    stderr.write(result.stderr);

    if (result.exitCode != 0) {
      print('Flutter project creation failed.');
      return;
    }

    final folders = [
      'assets',
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
      'lib/features',
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
      Directory(folder).createSync(recursive: true);
      print('✓ $folder');
    }

    print('');
    print('✅ Base Structure Ready');
  }
}
