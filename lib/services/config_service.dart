class ConfigService {
  static const appName = 'DevX';
  static const version = '1.0.0';

  Map<String, dynamic> load() {
    return {
      'app': appName,
      'version': version,
    };
  }
}
