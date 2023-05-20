(double, double) swap(final double x, final double y) => (y, x);

void main(List<String> args) {
  final x = 12.0;
  final y = -1.5;
  final (a, b) = swap(x, y);
  print("x: $x, y: $y -> swap -> x: $a, y: $b");
  // x: 12.0, y: -1.5 -> swap -> x: -1.5, y: 12.0
}
