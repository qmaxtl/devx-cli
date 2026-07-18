import 'core/context.dart';
import 'command_registry.dart';

class DevXRunner {
  final DevXContext context;

  DevXRunner(this.context);

  Future<void> run(List<String> args) async {
    if (args.isEmpty) {
      CommandRegistry.printHelp();
      return;
    }

    final command = CommandRegistry.find(args.first);

    if (command == null) {
      print('Unknown command: ${args.first}');
      print('');
      CommandRegistry.printHelp();
      return;
    }

    await command.run(args.skip(1).toList());
  }
}
