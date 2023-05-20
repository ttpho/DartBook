import 'dart:math';

bool isPrimeNumber(final int number) {
  if (number < 2) return false;

  final int squareRoot = sqrt(number).toInt();
  int i = 2;
  while (i <= squareRoot) {
    if (number % i == 0) return false;
    i = i + 1;
  }

  return true;
}

void main() {
  print(isPrimeNumber(-1)); // false
  print(isPrimeNumber(0)); // false
  print(isPrimeNumber(1)); // false
  print(isPrimeNumber(2)); // true
  print(isPrimeNumber(97)); // true
}
