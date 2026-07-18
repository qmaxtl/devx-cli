import 'dart:io';

class ProjectContext {
  final Directory root;
  final String projectName;

  ProjectContext({
    required this.root,
    required this.projectName,
  });

  String get path => root.path;

  bool get isFlutterProject =>
      File('${root.path}${Platform.pathSeparator}pubspec.yaml').existsSync();

  static ProjectContext current() {
    final root = Directory.current;

    return ProjectContext(
      root: root,
      projectName: root.uri.pathSegments.where((e) => e.isNotEmpty).last,
    );
  }
}
