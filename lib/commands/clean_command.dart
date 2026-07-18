import 'dart:io';

class CleanCommand {
  Future<void> run() async {
    stdout.writeln('Cleaning project...');
    await Process.run(
      'flutter',
      ['clean'],
      runInShell: true,
    );
    stdout.writeln('Done.');
  }
}
