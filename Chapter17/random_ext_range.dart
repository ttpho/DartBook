import 'dart:math';

extension RandomExt on Random {
  /// random number from range [from, to] in dart
  /// random = Random()
  /// with t, 0 <= random.nextInt(t + 1) <= t
  /// add from,  from <= from + random.nextInt(t + 1 ) <= from + t
  /// keep from, from + t = to => t = to -from
  /// remove t, from <= from + _random.nextInt(to - from + 1) <= to
  int nextIntFromRange({
    required final int from,
    required final int to,
  }) {
    assert(
      from <= to,
    );
    if (from == to) return from;

    return from + nextInt(to - from + 1);
  }
}

void main(List<String> args) {
  final random = Random();
  print(random.nextIntFromRange(from: 5, to: 100));
}
