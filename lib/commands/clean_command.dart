import 'dart:io';

class CleanCommand {
  Future<void> run() async {
    stdout.writeln('');
    stdout.writeln('Cleaning Flutter project...');
    stdout.writeln('');

    final commands = [
      ['flutter', 'clean'],
      ['flutter', 'pub', 'get'],
    ];

    for (final cmd in commands) {
      final result = await Process.run(
        cmd.first,
        cmd.sublist(1),
        runInShell: true,
      );

      stdout.write(result.stdout);

      if (result.exitCode != 0) {
        stderr.write(result.stderr);
        throw Exception('Command failed: ${cmd.join(" ")}');
      }
    }

    stdout.writeln('');
    stdout.writeln('Project cleaned successfully.');
  }
}
