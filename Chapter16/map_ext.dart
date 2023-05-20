import 'dart:convert';

class Planet {
  final String? name;
  final int? moonCount;

  Planet(this.name, this.moonCount);
  @override
  String toString() => "Planet($name, $moonCount)";
}

String toJsonStringWithFormat(final Map map) {
  final JsonEncoder encoder = JsonEncoder.withIndent('  ');
  return encoder.convert(map);
}

void main(List<String> args) {
  final moonCount = <String, int>{
    'Mercury': 0,
    'Venus': 0,
    'Earth': 1,
    'Mars': 2,
  };
  print(toJsonStringWithFormat(moonCount));
  print(moonCount.keys.toList()); // [Mercury, Venus, Earth, Mars]
  print(moonCount.values.toList()); // [0, 0, 1, 2]
  final List<Planet> listPlanet = moonCount
      .map((key, value) => MapEntry(key, Planet(key, value)))
      .values
      .toList();
  print(listPlanet);
  // Planet(Mercury, 0), Planet(Venus, 0), Planet(Earth, 1), Planet(Mars, 2)]
}
