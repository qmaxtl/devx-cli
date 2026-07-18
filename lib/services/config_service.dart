import 'dart:io';

class ConfigService {
  static const fileName = '.devx.yaml';

  bool exists() => File(fileName).existsSync();

  File get file => File(fileName);
}
