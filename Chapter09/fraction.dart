class Fraction<T extends num> {
  final T numerator;
  final T denominator;
  Fraction(this.numerator, this.denominator);
  num get value => numerator / denominator;
}

void main(List<String> args) {
  final Fraction<int> f = Fraction(1, 2);
  print(f.value); // 0.5

  final Fraction<double> f2 = Fraction(-2.5, 1);
  print(f2.value); // -2.5
}
