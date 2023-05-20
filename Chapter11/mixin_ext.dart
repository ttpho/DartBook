class Moveable {
  void move() {
    print("move");
  }
}

class Animal implements Moveable {
  @override
  void move() {
    print('Animal is moving');
  }
}

mixin Flyable {
  void fly() {
    print('I am flying');
  }
}

class Bird with Flyable {}

class Shape {
  void area() {
    print('Area');
  }
}

class Circle extends Shape {
  @override
  void area() {
    print('Area of Circle');
  }
}

void main() {
  var bird = Bird();
  bird.fly();

  var circle = Circle();
  circle.area();
}
