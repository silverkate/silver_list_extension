library silver_list_extension;

import 'dart:math';

extension SilverListExtension<T> on List<T> {
  /// Gets the first element that satisfies the given predicate or null.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (T element in this) {
      if (test(element)) return element;
    }

    return null;
  }

  /// Gets the last element that satisfies the given predicate or null.
  T? lastWhereOrNull(bool Function(T element) test) {
    final lastIndex = lastIndexWhere(test);

    if (lastIndex == -1) {
      return null;
    } else {
      return this[lastIndex];
    }
  }

  /// Returns random element or null if the list is empty.
  T? randomOrNull() {
    if (length < 1) {
      return null;
    }

    var rnd = Random();
    final index = rnd.nextInt(length);

    return this[index];
  }

  /// Replaces the element that matches the predicate.
  void replaceWhere(bool Function(T element) test, T element) {
    final index = indexWhere(test);
    this[index] = element;
  }

  /// Replaces the element.
  void replace(T element, T replacement) {
    final index = indexOf(element);
    if (index != -1) {
      this[index] = replacement;
    }
  }

  /// Replaces the element by the index.
  void replaceAt(int index, T replacement) {
    if (index >= length) {
      return;
    }

    this[index] = replacement;
  }
}
