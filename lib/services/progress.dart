import 'dart:io';

class Progress {
  void start(String task) => stdout.writeln('? $task');
  void done([String task = 'Done']) => stdout.writeln('? $task');
  void fail(String task) => stderr.writeln('? $task');
}
