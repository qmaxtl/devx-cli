class CacheService {
  final Map<String, dynamic> _cache = {};

  void set(String key, dynamic value) {
    _cache[key] = value;
  }

  dynamic get(String key) => _cache[key];

  void clear() => _cache.clear();
}
