import 'dart:io';

class PubspecGenerator {
  void generate(String projectPath) {
    final file = File('$projectPath${Platform.pathSeparator}pubspec.yaml');

    if (!file.existsSync()) {
      print('pubspec.yaml not found.');
      return;
    }

    var content = file.readAsStringSync();

    if (content.contains('flutter_riverpod:')) {
      print('✔ Dependencies already configured.');
      return;
    }

    content = content.replaceFirst(
      'dependencies:',
      '''dependencies:
  flutter_riverpod: ^2.6.1
  go_router: ^14.2.0
  dio: ^5.7.0
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  shared_preferences: ^2.3.2
''',
    );

    content = content.replaceFirst(
      'dev_dependencies:',
      '''dev_dependencies:
  build_runner: ^2.4.12
  hive_generator: ^2.0.1
  flutter_launcher_icons: ^0.14.1
  flutter_native_splash: ^2.4.1
''',
    );

    file.writeAsStringSync(content);

    print('✔ pubspec.yaml updated.');
  }
}
