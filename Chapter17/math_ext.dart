import 'dart:math' as math;

double radianToDegree(num radians) => (180 * radians) / math.pi;
double degreeToRadian(num degrees) => (degrees * math.pi) / 180;

void main(List<String> args) {
  print(math.tan(math.pi / 4)); // 0.9999999999999999
  print(radianToDegree(math.atan(math.sqrt(3)))); // 60.00000000000001

  print(math.sin(math.pi / 6)); // 0.49999999999999994
  print(radianToDegree(math.asin(1 / 2))); // 29.999999999999996

  print(math.cos(math.pi / 3)); // 0.5000000000000001
  print(radianToDegree(math.acos(1 / 2))); // 59.99999999999999

  print(math.min(-0.0, 0.0)); // -0.0
  print(math.max(-0.0, 0.0)); // 0.0
  print(math.pow(2, 3)); // 8
  print(math.pow(1000, 1 / 3)); // 9.999999999999998
  print(math.sqrt(36)); // 6
  num result = math.sqrt(-36);
  print(result.isNaN); // true
  print(math.sqrt(-36).isNaN);
  result = math.pow(math.e, 3);
  print(math.log(result)); // 3.0

  final num x = math.log(-100);
  print(x.isNaN); // true
}
