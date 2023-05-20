void main(List<String> args) {
  final List<String> animals = ['🐈', '🐕', '🐅'];

  try {
    final String item = animals[1000];
    print(item);
  } on RangeError catch (e) {
    print("Handle error $e");
  }
}
