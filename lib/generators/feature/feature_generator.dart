import 'dart:io';

class FeatureGenerator {
  Future<void> generate(String name) async {
    final dir = Directory('lib/features/$name');

    Directory('${dir.path}/data').createSync(recursive: true);
    Directory('${dir.path}/domain').createSync(recursive: true);
    Directory('${dir.path}/presentation').createSync(recursive: true);
    Directory('${dir.path}/presentation/widgets').createSync(recursive: true);

    stdout.writeln('Feature "$name" created.');
  }
}
