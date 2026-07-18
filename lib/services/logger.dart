import 'dart:io';

class Logger {
  static void info(String message) {
    stdout.writeln('[INFO] $message');
  }

  static void success(String message) {
    stdout.writeln('[SUCCESS] $message');
  }

  static void warning(String message) {
    stdout.writeln('[WARNING] $message');
  }

  static void error(String message) {
    stderr.writeln('[ERROR] $message');
  }
}
