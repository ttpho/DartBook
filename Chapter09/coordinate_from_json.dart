import 'dart:convert';

class Coordinate {
  String? lat;
  String? lng;

  Coordinate({
    this.lat,
    this.lng,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );
  }

  @override
  String toString() => "Coordinate(lat: $lat, lng: $lng)";
}

void main(List<String> args) {
  final String jsonString = """
    {
      "lat": "-37.3159",
      "lng": "81.1496"
    }
""";
  final Map<String, dynamic> mapCoordinate = jsonDecode(jsonString);
  final Coordinate coordinate = Coordinate.fromJson(mapCoordinate);
  print(coordinate); // Coordinate(lat: -37.3159, lng: 81.1496)
}
