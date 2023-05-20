extension ListNumberExtension on List<num> {
  num get sum => fold(0, (sum, item) => sum + item);
}
