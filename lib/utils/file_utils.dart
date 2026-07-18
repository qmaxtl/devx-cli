import 'dart:io';

class FileUtils {
  static bool exists(String path) {
    return File(path).existsSync() || Directory(path).existsSync();
  }

  static void ensureDir(String path) {
    Directory(path).createSync(recursive: true);
  }

  static void write(String path, String content) {
    File(path)
      ..createSync(recursive: true)
      ..writeAsStringSync(content);
  }

  static String read(String path) {
    return File(path).readAsStringSync();
  }
}
