void main(List<String> args) {
  parseNumber();
  roundNumber();
  logNumber();
}

void parseNumber() {
  print(double.tryParse("-123.456")); // -123.456
  print(double.tryParse("abc")); // null
  try {
    print(double.parse("abc"));
  } catch (e) {
    print(e); // FormatException: Invalid double
  }
}

void roundNumber() {
  // {round: 3, floor: 3, ceil: 4, truncate: 3}
  print("${logMethod(3.00001)}");

  // {round: 4, floor: 3, ceil: 4, truncate: 3}
  print("${logMethod(3.99999)}");

  // {round: -3, floor: -4, ceil: -3, truncate: -3}
  print("${logMethod(-3.00001)}");

  // {round: -4, floor: -4, ceil: -3, truncate: -3}
  print("${logMethod(-3.99999)}");
}

Map<String, int> logMethod(num x) {
  return {
    "round": x.round(),
    "floor": x.floor(),
    "ceil": x.ceil(),
    "truncate": x.truncate(),
  };
}

void logNumber() {
  final x = 3.5 / 0;
  print("x: ${log(x)}");
  // x: {isNaN: false, isNegative: false, isInfinite: true, isFinite: false}

  final y = 0.0 / 0;
  print("y: ${log(y)}");
  // y: {isNaN: true, isNegative: false, isInfinite: false, isFinite: false}

  final z = -2023;
  print("z: ${log(z)}");
  // z: {isNaN: false, isNegative: true, isInfinite: false, isFinite: true}
}

Map<String, bool> log(num x) {
  return {
    "isNaN": x.isNaN,
    "isNegative": x.isNegative,
    "isInfinite": x.isInfinite,
    "isFinite": x.isFinite,
  };
}
