class PathUtils {
  static String join(String a, String b) {
    if (a.endsWith('/') || a.endsWith(r'\')) {
      return '$a$b';
    }
    return '$a/$b';
  }
}
