import 'package:path/path.dart' as p;

class PathUtils {
  static String join(List<String> parts) => p.joinAll(parts);

  static String basename(String path) => p.basename(path);

  static String dirname(String path) => p.dirname(path);
}
