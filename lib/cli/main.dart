import 'core/context.dart';
import 'register_defaults.dart';
import 'runner.dart';

Future<void> main(List<String> arguments) async {
  registerDefaultCommands();

  final runner = DevXRunner(
    DevXContext.current(),
  );

  await runner.run(arguments);
}
