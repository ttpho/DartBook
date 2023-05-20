import 'dart:math';

void main() {
  final jsonMap = {
    "address": {
      "street": "Kulas Light",
      "city": "Gwenborough",
    },
  };
  final address = jsonMap["address"] as Map<String, dynamic>;
  final street = address["street"] ?? "";
  final city = address["city"] ?? "";

  print("Address: $street, $city");
  // Address: Kulas Light, Gwenborough

  final {
    'address': {
      "street": streetVal,
      "city": cityVal,
    }
  } = {
    "address": {
      "street": "Kulas Light",
      "city": "Gwenborough",
    },
  };

  print("Address: $streetVal, $cityVal");
  // Address: Kulas Light, Gwenborough

  final List<Point> listPoint = [Point(0, 0), Point(200, 400)];

  for (final Point(x: x, y: y) in listPoint) {
    print("A point with the provided ($x, $y) coordinates");
  }

  for (final point in listPoint) {
    final x = point.x;
    final y = point.y;
    print("A point with the provided ($x, $y) coordinates");
  }

  final [a, b, c] = [2, 3, 5];
  print("a = $a, b = $b , c = $c"); // a = 2, b = 3 , c = 5
}
