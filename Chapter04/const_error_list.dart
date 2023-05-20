void main() {
  final List<String> animals = ['🐈', '🐕', '🐅'];
  animals.add('🐒');
  print(animals); // Result: [🐈, 🐕, 🐅, 🐒]

  const List<String> fruits = ['🍇', '🍈', '🍉'];
  fruits.add(
      "🍊"); // 🐞 Unsupported operation: Cannot add to an unmodifiable list
  print(fruits);
}
