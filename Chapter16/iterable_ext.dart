import 'dart:convert';
import 'dart:math';

void main(List<String> args) {
  final products = jsonDecode('''
   [
     {"name": "Screwdriver", "price": 42.00},
     {"name": "Wingnut", "price": 0.50}
   ]
   ''');

  final double totalPrice = products
      .map((product) => product['price'] as double)
      .fold(0.0, (value, element) => value + element);
  print(totalPrice); // 42.5

  final List<Point> listPoint = [Point(3, 4), Point(0, 0)];
  final List<double> magnitude = listPoint.fold([], (previousValue, element) {
    previousValue.add(element.magnitude);
    return previousValue;
  });
  print(magnitude); // [5.0, 0.0]

  // listPoint.fold({}, (previousValue, element) => previousValue.putIfAbsent(key, () => null))

  print(listPoint.every((p) => p.magnitude <= 5)); // true
  print(listPoint.any((p) => p.magnitude == 5)); // true
}
