sealed class Shape {
  void draw();
}

class Triangle extends Shape {
  @override
  void draw() {
    print("Drawing a triangle.");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a square.");
  }
}

void main() {
  final shape = Triangle();
  shape.draw(); // Output: Drawing a triangle.
}
