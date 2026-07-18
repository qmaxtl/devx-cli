import 'core/command.dart';

class CommandRegistry {
  static final List<DevXCommand> _commands = [];

  static void register(DevXCommand command) {
    _commands.add(command);
  }

  static DevXCommand? find(String name) {
    for (final command in _commands) {
      if (command.name == name) {
        return command;
      }
    }
    return null;
  }

  static List<DevXCommand> get commands => List.unmodifiable(_commands);

  static void printHelp() {
    print('');
    print('DevX CLI v2');
    print('');
    print('Available Commands');
    print('------------------');

    if (_commands.isEmpty) {
      print('No commands registered.');
      return;
    }

    for (final command in _commands) {
      print('${command.name.padRight(15)} ${command.description}');
    }

    print('');
  }
}
