void main(List<String> args) {
  final Set<String> group1 = {'Dart', 'Java', 'C'};
  final Set<String> group2 = {'Dart', 'Swift', 'Kotlin'};
  print(group1.difference(group2)); // {Java, C}
  print(group2.difference(group1)); // {Swift, Kotlin}

  print(group1.intersection(group2)); // {Dart}

  final Set<String> group3 = {'Dart', 'Java', 'C'};
  final Set<String> group4 = {'Dart', 'Swift', 'Kotlin'};
  print(group3.union(group4)); // {Dart, Java, C, Swift, Kotlin}
}
