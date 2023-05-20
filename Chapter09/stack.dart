class Stack<K> {
  final _list = <K>[];

  void push(K value) => _list.add(value);

  K? pop() => isEmpty ? null : _list.removeLast();

  K? get peek => isEmpty ? null : _list.last;

  bool get isEmpty => _list.isEmpty;
  bool get isNotEmpty => _list.isNotEmpty;
}

void main(List<String> args) {
  final Stack<String> stack = Stack();
  stack.push("Dart");
  stack.push("Java");
  print(stack.pop()); // Java
  print(stack.pop()); // Dart
  print(stack.pop()); // null
}
