import 'dart:math';

void main(List<String> args) {
  final List<int> list = [1, 1, 2, 3, 5, 7];
  final List<int> newList = list.toSet().toList();
  print(newList); // [1, 2, 3, 5, 7]

  final List<Point> listPoint = [Point(3, 4), Point(1, 2)];

  /// 0: Point(3, 4)
  /// 1: Point(1, 2)
  listPoint.asMap().entries.map((entry) {
    final int index = entry.key;
    final Point value = entry.value;
    print("${index}: $value");
  }).toList();

  final Map<num, num> mapPoint =
      Map.fromIterable(listPoint, key: (e) => e.x, value: (e) => e.y);
  print(mapPoint); // {3: 4, 1: 2}

  final numbers = <String>['two', 'three', 'four'];
  print(numbers.asMap()); // {0: two, 1: three, 2: four}

  print(numbers.reversed); // (four, three, two)

  final List<String> list2 = ['a', 'bb', 'ccc'];
  final int result = list2.fold(
      0,
      (final int previousValue, final String element) =>
          previousValue + element.length);
  print(result);
}
