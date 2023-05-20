typedef WhereElement<E> = bool Function(E e);

extension IterableExt<E> on Iterable {
  (E?, int) lastOrNullWhere(WhereElement<E> test) {
    late E? result;
    bool foundMatching = false;
    int index = -1;
    for (E element in this) {
      index = index + 1;
      if (test(element)) {
        result = element;
        foundMatching = true;
      }
    }
    if (foundMatching) return (result, index);

    return (null, -1);
  }
}
