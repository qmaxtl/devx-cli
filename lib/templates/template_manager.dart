import 'dart:io';

class TemplateManager {
  static const _root = 'templates';

  String read(String relativePath) {
    final file = File('$_root${Platform.pathSeparator}$relativePath');

    if (!file.existsSync()) {
      throw Exception('Template not found: $relativePath');
    }

    return file.readAsStringSync();
  }

  void write(
    String projectPath,
    String relativePath,
    String content,
  ) {
    final file = File(
      '$projectPath${Platform.pathSeparator}$relativePath',
    );

    file.parent.createSync(recursive: true);

    file.writeAsStringSync(content);

    print('✓ $relativePath');
  }
}
