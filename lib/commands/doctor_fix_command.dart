import 'dart:io';

class DoctorFixCommand {
  Future<void> run() async {
    stdout.writeln('');
    stdout.writeln('Running DevX Doctor Fix...');
    stdout.writeln('');

    final commands = [
      ['flutter', 'doctor'],
      ['flutter', 'pub', 'get'],
      ['dart', 'fix', '--apply'],
      ['dart', 'format', '.'],
    ];

    for (final cmd in commands) {
      stdout.writeln('> ${cmd.join(" ")}');

      final result = await Process.run(
        cmd.first,
        cmd.sublist(1),
        runInShell: true,
      );

      stdout.write(result.stdout);

      if (result.exitCode != 0) {
        stderr.write(result.stderr);
        throw Exception('Failed: ${cmd.join(" ")}');
      }
    }

    stdout.writeln('');
    stdout.writeln('DevX Doctor Fix completed successfully.');
  }
}
