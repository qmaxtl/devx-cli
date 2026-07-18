import 'dart:io';

class DevXContext {
  DevXContext({
    required this.currentDirectory,
    required this.projectName,
  });

  final Directory currentDirectory;
  final String projectName;

  static DevXContext current() {
    final dir = Directory.current;

    return DevXContext(
      currentDirectory: dir,
      projectName: dir.uri.pathSegments.isEmpty
          ? 'project'
          : dir.uri.pathSegments.where((e) => e.isNotEmpty).last,
    );
  }
}
