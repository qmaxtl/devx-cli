import '../core/command.dart';
import '../core/context.dart';
import '../services/logger.dart';

class CreateCommand implements DevXCommand {
  @override
  String get name => 'create';

  @override
  String get description => 'Create a new project';

  @override
  Future<void> run(List<String> args) async {
    final ctx = DevXContext.current();

    if (args.isEmpty) {
      Logger.error('Usage: devx create <template>');
      return;
    }

    Logger.info('Template : ${args.first}');
    Logger.info('Project  : ${ctx.projectName}');
    Logger.info('Location : ${ctx.currentDirectory.path}');
    Logger.success('Project generation started.');
  }
}
