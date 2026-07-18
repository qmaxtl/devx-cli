import 'package:devx/commands/create_command.dart';
import 'package:devx/commands/doctor_command.dart';
import 'package:devx/generators/screen_generator.dart';
import 'package:devx/generators/widget_generator.dart';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('DevX CLI');
    print('');
    print('Commands:');
    print('  doctor');
    print('  create community-app');
    print('  screen <name>');
    print('  widget <name>');
    return;
  }

  switch (arguments.first) {
    case 'doctor':
      runDoctor();
      break;

    case 'create':
      CreateCommand().run(arguments.skip(1).toList());
      break;

    case 'screen':
      if (arguments.length < 2) {
        print('Usage: devx screen <name>');
        return;
      }
      ScreenGenerator().generate(arguments[1]);
      break;

    case 'widget':
      if (arguments.length < 2) {
        print('Usage: devx widget <name>');
        return;
      }
      WidgetGenerator().generate(arguments[1]);
      break;

    default:
      print('Unknown Command');
  }
}
