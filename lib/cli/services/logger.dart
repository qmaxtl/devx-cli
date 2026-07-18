import 'dart:io';

enum LogLevel {
  info,
  success,
  warning,
  error,
}

class Logger {
  static void log(String message, {LogLevel level = LogLevel.info}) {
    switch (level) {
      case LogLevel.info:
        stdout.writeln('[INFO] $message');
        break;
      case LogLevel.success:
        stdout.writeln('[SUCCESS] $message');
        break;
      case LogLevel.warning:
        stdout.writeln('[WARNING] $message');
        break;
      case LogLevel.error:
        stderr.writeln('[ERROR] $message');
        break;
    }
  }

  static void info(String message) => log(message, level: LogLevel.info);

  static void success(String message) => log(message, level: LogLevel.success);

  static void warning(String message) => log(message, level: LogLevel.warning);

  static void error(String message) => log(message, level: LogLevel.error);
}
