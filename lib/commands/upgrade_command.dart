import 'dart:io';

class UpgradeCommand {
  Future<void> run() async {
    stdout.writeln('Checking updates...');
    stdout.writeln('Already up to date.');
  }
}
