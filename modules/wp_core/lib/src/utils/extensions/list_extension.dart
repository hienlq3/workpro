extension ListExtensions<T> on List<T> {
  /// Returns the first element that satisfies the [test], or null if none is found.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }
}
