void main(List<String> args) {
  final String source = "text";
  try {
    final int number = int.parse(source);
    print(number); // FormatException
  } on FormatException catch (e) {
    print("FormatException $e");
  }
  final int? number2 = int.tryParse(source); // null
  print(number2);

  final List<int> items = [];
  try {
    print(items.first);
    print(items.last);
  } on StateError catch (e) {
    print("StateError $e");
  }

  if (items.isNotEmpty) {
    print(items.first);
    print(items.last);
  }
}
