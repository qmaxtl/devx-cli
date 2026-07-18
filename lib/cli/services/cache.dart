class DevXCache {
  final Map<String, Object?> _store = {};

  T? get<T>(String key) => _store[key] as T?;

  void set<T>(String key, T value) {
    _store[key] = value;
  }

  bool contains(String key) => _store.containsKey(key);

  void remove(String key) {
    _store.remove(key);
  }

  void clear() {
    _store.clear();
  }

  Iterable<String> get keys => _store.keys;
}
