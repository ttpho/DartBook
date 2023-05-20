class MySingleton {
  static final MySingleton _singleton = MySingleton._();
  factory MySingleton() {
    return _singleton;
  }
  MySingleton._();
  void printMessage() {
    print('This is a Singleton instance!');
  }
}

void main() {
  MySingleton singleton1 = MySingleton();
  MySingleton singleton2 = MySingleton();
  MySingleton singleton3 = MySingleton();

  print(identical(singleton1, singleton2)); // true
  print(identical(singleton2, singleton3)); // true
  MySingleton().printMessage(); // This is a Singleton instance!
}
