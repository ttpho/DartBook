class Circle {
  static const double pi = 3.14;
  double radius;
  Circle(this.radius);
  double get area => pi * radius * radius;
}

void main() {
  Circle circle = Circle(5.0);
  print('Diện tích hình tròn: ${circle.area}');
  print('Giá trị của PI: ${Circle.pi}');
}
