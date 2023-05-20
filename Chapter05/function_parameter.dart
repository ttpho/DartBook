typedef MapElement = int Function(int x);

int sumWithMapElement(List<int> list, MapElement mapElement) {
  var sum = 0;
  list.forEach((element) {
    sum = sum + mapElement(element);
  });
  return sum;
}

int sum(List<int> list, int map(int item)) {
  var sum = 0;
  list.forEach((element) {
    sum = sum + map(element);
  });
  return sum;
}

void main(List<String> args) {
  final list = [-2, 3, -5, 6, -8, 11];

  /// sum of numbers
  print(sum(list, (item) => item));

  /// sum of squares of numbers
  print(sum(list, (item) => item * item));

  /// sum of cubes of numbers
  print(sum(list, (item) => item * item * item));

  print(list.map((e) => e).reduce((value, element) => value + element));

  print(list.map((e) => e * e).reduce((value, element) => value + element));

  print(list.map((e) => e * e * e).reduce((value, element) => value + element));
}
