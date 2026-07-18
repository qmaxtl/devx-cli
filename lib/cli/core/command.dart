abstract class DevXCommand {
  String get name;

  String get description;

  Future<void> run(List<String> args);
}
