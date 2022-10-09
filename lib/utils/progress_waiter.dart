class ProgressWaiter {
  static Map<String, ProgressWaiter> instances = {};

  bool _progress = false;

  ProgressWaiter._();

  factory ProgressWaiter.get(String key) {
    ProgressWaiter? instance = instances[key];
    if (instance == null) {
      instance = ProgressWaiter._();
      instances[key] = instance;
    }
    return instance;
  }

  T? onProgress<T>(T Function() callback, {Duration? delay}) {
    T? result;
    if (!_progress) {
      _progress = true;
      result = callback();
      if (delay != null) {
        Future.delayed(delay, () => _progress = false);
      }
    }
    return result;
  }

  Future<T?> onProgressAsync<T>(Future<T> Function() callback,
      {Duration? delay}) async {
    T? result;
    if (!_progress) {
      _progress = true;
      result = await callback();
      if (delay != null) {
        Future.delayed(delay, () => _progress = false);
      }
    }
    return result;
  }
}
