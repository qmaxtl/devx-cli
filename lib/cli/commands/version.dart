import '../core/command.dart';
import '../services/logger.dart';

class VersionCommand implements DevXCommand {
  @override
  String get name => 'version';

  @override
  String get description => 'Show DevX CLI version';

  @override
  Future<void> run(List<String> args) async {
    Logger.info('DevX CLI v2.0.0-dev');
  }
}
