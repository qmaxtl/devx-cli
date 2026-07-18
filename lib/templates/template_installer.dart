class TemplateInstaller {
  Future<void> install(String template) async {
    print('Installing template: $template');
    print('Done.');
  }

  Future<void> uninstall(String template) async {
    print('Removing template: $template');
    print('Done.');
  }
}
