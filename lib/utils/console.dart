import 'dart:io';

class Console {
  static void info(String text) => stdout.writeln(text);
  static void success(String text) => stdout.writeln(text);
  static void error(String text) => stderr.writeln(text);
}
