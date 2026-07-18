import 'dart:io';

class Console {
  static void line() => stdout.writeln('-' * 50);

  static void title(String text) {
    line();
    stdout.writeln(text);
    line();
  }

  static void success(String text) => stdout.writeln('? $text');

  static void error(String text) => stderr.writeln('? $text');

  static void info(String text) => stdout.writeln('?? $text');
}
