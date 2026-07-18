import 'dart:io';

class FileUtils {
  static void ensure(String path) {
    Directory(path).createSync(recursive: true);
  }

  static void write(String path, String content) {
    File(path).writeAsStringSync(content);
  }
}
