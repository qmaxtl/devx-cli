import 'dart:io';

import '../services/config_service.dart';

class ConfigCommand {
  final ConfigService _config = ConfigService();

  void run() {
    stdout.writeln('');
    stdout.writeln('DevX Configuration');
    stdout.writeln('------------------');
    stdout.writeln('Config Exists : ${_config.exists()}');
    stdout.writeln('Config File   : ${_config.file.path}');
    stdout.writeln('');
  }
}
