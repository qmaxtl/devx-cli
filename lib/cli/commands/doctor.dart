import '../core/command.dart';
import '../core/context.dart';
import '../services/logger.dart';

class DoctorCommand implements DevXCommand {
  @override
  String get name => 'doctor';

  @override
  String get description => 'Check DevX environment';

  @override
  Future<void> run(List<String> args) async {
    final ctx = DevXContext.current();

    Logger.info('Project : ${ctx.projectName}');
    Logger.info('Path    : ${ctx.currentDirectory.path}');
    Logger.success('DevX environment looks good.');
  }
}
