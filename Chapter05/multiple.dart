(int, double) minOf(final List<double> list) {
  if (list.isEmpty) return (-1, double.nan);

  int minIndex = 0;
  double minValue = list.first;

  if (list.length == 1) return (minIndex, minValue);

  for (var i = 1; i < list.length; i++) {
    if (list[i] < minValue) {
      minValue = list[i];
      minIndex = i;
    }
  }

  return (minIndex, minValue);
}

void main(List<String> args) {
  final (minIndex, minValue) = minOf([13, -6.0, 2, 8.6, -3, -5]);

  print("Min value: $minValue"); // Min value: -6.0
  print("Index: $minIndex"); // Index: 1
}
