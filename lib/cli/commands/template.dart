import '../core/command.dart';
import '../services/logger.dart';
import '../services/template_service.dart';

class TemplateCommand implements DevXCommand {
  final TemplateService _service = const TemplateService();

  @override
  String get name => 'template';

  @override
  String get description => 'List available templates';

  @override
  Future<void> run(List<String> args) async {
    Logger.info('Available Templates');

    for (final template in _service.list()) {
      print(' - $template');
    }
  }
}
