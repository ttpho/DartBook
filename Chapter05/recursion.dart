int factorial(final int n) {
  if (n <= 1) return 1;

  return n * factorial(n - 1);
}

int fibonacci(int n) {
  if (n <= 0) return 0;
  if (n <= 2) return 1;

  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  assert(factorial(5) == 120);
  assert(fibonacci(19) == 4181);
}
