void main(List<String> args) {
  print("Dart"[1]); // a
  print("Dart".startsWith("D")); // true
  print("Dart".endsWith("t")); // true
  print("Dart".contains("z")); // false
  print("Dart".indexOf("a")); // 1
  print("Dart".lastIndexOf("D")); // 0
  print("Dart".padLeft(5, 'x')); // xDart
  print("Dart".padRight(5, 'x')); // Dartx
  print("Dart" * 3); // DartDartDart
  print("Dart".replaceAll("t", "k")); // Dark
  print("Dart".split("")); // [D, a, r, t]
  print("Dart".substring(1)); // art
  print("Dart".toLowerCase()); // dart
  print("Dart".toUpperCase()); // DART
  print(" Dart ".trim() == "Dart"); // true
  print(" Dart ".trimLeft() == "Dart "); // true
  print(" Dart ".trimRight() == " Dart"); // true
}
