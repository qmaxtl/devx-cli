import '../commands/create.dart';
import '../commands/doctor.dart';
import '../commands/feature.dart';
import '../commands/template.dart';
import '../commands/version.dart';

import 'command_registry.dart';

void registerDefaultCommands() {
  CommandRegistry.register(CreateCommand());
  CommandRegistry.register(DoctorCommand());
  CommandRegistry.register(FeatureCommand());
  CommandRegistry.register(TemplateCommand());
  CommandRegistry.register(VersionCommand());
}
