import 'dart:io';

class DoctorFixCommand {
  Future<void> run() async {
    stdout.writeln('');
    stdout.writeln('Running DevX Doctor Fix...');
    stdout.writeln('');

    await Process.run(
      'flutter',
      ['pub', 'get'],
      runInShell: true,
    );

    stdout.writeln('Doctor Fix Completed.');
  }
}
