import 'dart:io';

class TemplateCommand {
  void run(List<String> args) {
    stdout.writeln('');
    stdout.writeln('Available Templates');
    stdout.writeln('-------------------');
    stdout.writeln('flutter');
    stdout.writeln('flutter_bloc');
    stdout.writeln('flutter_riverpod');
    stdout.writeln('flutter_clean');
    stdout.writeln('flutter_firebase');
    stdout.writeln('flutter_supabase');
    stdout.writeln('dart_package');
    stdout.writeln('plugin');
    stdout.writeln('');
  }
}
