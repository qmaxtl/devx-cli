import '../core/command.dart';
import '../generators/feature_generator.dart';
import '../services/logger.dart';

class FeatureCommand implements DevXCommand {
  final FeatureGenerator _generator = FeatureGenerator();

  @override
  String get name => 'feature';

  @override
  String get description => 'Generate a complete feature module';

  @override
  Future<void> run(List<String> args) async {
    if (args.isEmpty) {
      Logger.error('Usage: devx feature <feature_name>');
      return;
    }

    await _generator.generate(args.first);
  }
}
