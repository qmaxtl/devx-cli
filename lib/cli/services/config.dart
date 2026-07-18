class DevXConfig {
  const DevXConfig({
    required this.appName,
    required this.version,
    required this.templateDirectory,
  });

  final String appName;
  final String version;
  final String templateDirectory;

  static const current = DevXConfig(
    appName: 'DevX CLI',
    version: '2.0.0-dev',
    templateDirectory: 'templates',
  );
}
