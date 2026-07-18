import 'dart:io';

void runDoctor() {
  print('');
  print('====================================');
  print('         DEVX DOCTOR');
  print('====================================');
  print('');

  checkTool('Dart', ['dart', '--version']);
  checkTool('Flutter', ['flutter', '--version']);
  checkTool('Git', ['git', '--version']);

  print('');
  print('Doctor Finished.');
}

void checkTool(String name, List<String> command) {
  try {
    final result = Process.runSync(
      command.first,
      command.sublist(1),
    );

    if (result.exitCode == 0) {
      print('[OK] $name');
    } else {
      print('[FAIL] $name');
    }
  } catch (_) {
    print('[FAIL] $name');
  }
}
