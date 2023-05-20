import 'dart:math';

void main() {
  String text1 = toSnakeCase(null, defaultText: "null");
  String text2 = toSnakeCase('', defaultText: "empty");
  String text3 = toSnakeCase('camelCase');

  print(text1); // null
  print(text2); // empty
  print(text3); // camel_case

  print(displayName("Bill")); // Bill
  print(displayName('John', 'Doe')); // John Doe

  final double area = triangleArea(a: 3, b: 4, c: 5);
  print("Area: $area"); // Area: 6.0
}

String displayName(String firstName, [String? lastName]) {
  if (lastName != null) {
    return '$firstName $lastName';
  }

  return firstName;
}

double triangleArea({
  required final double a,
  required final double b,
  required final double c,
}) {
  assert(a > 0);
  assert(b > 0);
  assert(c > 0);
  final double p = (a + b + c) / 2;
  final double areaSquare = p * (p - a) * (p - b) * (p - c);
  assert(areaSquare > 0);
  return sqrt(areaSquare);
}

String toSnakeCase(String? text, {String defaultText = ""}) {
  if (text == null || text.isEmpty) return defaultText;

  final RegExp exp = RegExp(r'(?<=[a-z])[A-Z]');

  return text.replaceAllMapped(exp, (Match m) {
    final String first = m.group(0) ?? '';
    return '_$first';
  }).toLowerCase();
}
