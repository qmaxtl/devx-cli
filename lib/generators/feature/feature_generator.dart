import 'dart:io';

class FeatureGenerator {
  Future<void> generate(String name) async {
    final folders = [
      'lib/features/$name',
      'lib/features/$name/data',
      'lib/features/$name/domain',
      'lib/features/$name/presentation',
      'lib/features/$name/presentation/widgets',
    ];

    for (final folder in folders) {
      Directory(folder).createSync(recursive: true);
    }

    stdout.writeln('Feature "$name" generated.');
  }
}
