import 'package:devx/core/project_context.dart';

void runDoctor() {
  final ctx = ProjectContext.current();

  print('');
  print('========== DEVX DOCTOR ==========');
  print('Project : ${ctx.projectName}');
  print('Path    : ${ctx.path}');
  print('Flutter : ${ctx.isFlutterProject ? "YES" : "NO"}');
  print('================================');
}
