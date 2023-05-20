class Cat {
  final String name;
  Cat(this.name);

  void printName() => print('My name is $name');

  String call(int age) {
    return 'Hello, I am $name and I am $age years old.';
  }
}

void main() {
  // khởi tạo đối tượng
  final cat = Cat("Mỹ Diệu");
  cat.printName(); // My name is Mỹ Diệu
  // gọi lớp như một hàm
  print(cat(5)); // Hello, I am Mỹ Diệu and I am 5 years old.
}
