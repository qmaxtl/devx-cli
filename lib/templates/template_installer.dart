import 'dart:io';

class TemplateInstaller {
  Future<void> install(String name) async {
    stdout.writeln('Installing template: $name');
  }
}
