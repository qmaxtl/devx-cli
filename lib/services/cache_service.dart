class CacheService {
  final _cache = <String, Object?>{};

  T? get<T>(String key) => _cache[key] as T?;

  void set<T>(String key, T value) => _cache[key] = value;

  void clear() => _cache.clear();
}
