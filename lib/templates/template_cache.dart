class TemplateCache {
  final Map<String, String> _cache = {};

  void put(String key, String value) => _cache[key] = value;

  String? get(String key) => _cache[key];

  void clear() => _cache.clear();
}
