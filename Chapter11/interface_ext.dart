abstract class Moveable {
  void move();
}

abstract class Flyable {
  void fly();
}

abstract class Animal {}

class Duck extends Animal implements Moveable, Flyable {
  @override
  void move() {
    print('I am moving');
  }

  @override
  void fly() {
    print('I am flying');
  }
}
