import 'dart:io';

import '../core/context.dart';
import '../services/logger.dart';

class FeatureGenerator {
  Future<void> generate(String name) async {
    final root = Directory(
      '${DevXContext.current().currentDirectory.path}${Platform.pathSeparator}lib${Platform.pathSeparator}features${Platform.pathSeparator}$name',
    );

    final folders = [
      'data',
      'domain',
      'presentation',
      'presentation/widgets',
      'presentation/pages',
      'presentation/providers',
    ];

    for (final folder in folders) {
      Directory('${root.path}${Platform.pathSeparator}$folder')
          .createSync(recursive: true);
    }

    Logger.success('Feature "$name" generated.');
  }
}
