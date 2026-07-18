import 'dart:io';

class TemplateManager {
  const TemplateManager();

  String read(String path) {
    final file = File(path);

    if (!file.existsSync()) {
      return '';
    }

    return file.readAsStringSync();
  }

  void write(
    String projectPath,
    String relativePath,
    String content,
  ) {
    final file = File('$projectPath/$relativePath');

    file.parent.createSync(recursive: true);
    file.writeAsStringSync(content);
  }

  List<String> available() {
    return const [
      'community-app',
      'flutter',
      'flutter_bloc',
      'flutter_clean',
      'flutter_riverpod',
      'flutter_firebase',
      'flutter_supabase',
      'dart_package',
      'plugin',
    ];
  }
}
