#include <stdio.h>

int add(int x, int y) {
  return x + y;
}

int main() {
  int x = 1;
  int y = 3;
  int sum = add(x, y);
  printf("Sum %d", sum);
  
  return 0;
}