import 'dart:io';

class Progress {
  static void start(String message) {
    stdout.write('$message...');
  }

  static void done() {
    stdout.writeln(' Done');
  }
}
