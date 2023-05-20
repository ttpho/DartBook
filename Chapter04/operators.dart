void main() {
  print(7 / 3); // 2.3333333333333335
  print(7 ~/ 3); // 2
  print(7 + 3); // 10
  print(7 - 3); // 4
  print(7 % 3); // 1

  final String text = "dart" * 3;
  print(text); // dartdartdart

  final String message = 2.isEven ? "integer is even" : "integer is odd";
  print(message); // "integer is even"

  /// ??
  print("Dart" ?? null); // Dart
  print("Dart" ?? "Java"); // Dart

  /// ??=
  String? name = getName();
  name ??= "Dart";
  print(name); // Dart

  /// .. (2 dots)
  final List<String> fruits = ["🍇", "🍈", "🍉"];
  fruits
    ..add("🍊")
    ..addAll(["🍋", "🍌"])
    ..remove("🍇");

  print(fruits); // [🍈, 🍉, 🍊, 🍋, 🍌]

  /// ... (3 dots)
  final List<String> empty = [];
  final List<String> items = ["🍊", "🍋", "🍌"];

  final List<String> plants = [
    "🍇",
    ...empty,
    "🍈",
    "🍉",
    ...items,
    ...["🍍"]
  ];

  print(plants); // [🍇, 🍈, 🍉, 🍊, 🍋, 🍌, 🍍]
}

String? getName() => null;
