import 'dart:io';

class TemplateDownloader {
  Future<void> download(String name) async {
    stdout.writeln('Downloading template: $name');
  }
}
