import 'dart:math' as math;

abstract class Figure {
  double calculateArea();

  String getName() => runtimeType.toString();
}

class Triangle extends Figure {
  final double base;
  final double height;
  Triangle({required this.base, required this.height});

  @override
  double calculateArea() => 0.5 * this.base * this.height;
}

class Circle extends Figure {
  final double radius;
  Circle({required this.radius});

  @override
  double calculateArea() => radius * radius * math.pi;

  @override
  String getName() => "Circle(radius: $radius)";
}

void main(List<String> args) {
  // Abstract classes can't be instantiated.
  // final Figure figure = Figure();
  final Figure figure = Triangle(base: 3, height: 4);
  // Output: Triangle area: 6.0
  print("${figure.getName()} area: ${figure.calculateArea()}");
}
