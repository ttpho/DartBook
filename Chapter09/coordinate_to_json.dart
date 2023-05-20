class Coordinate {
  String? lat;
  String? lng;

  Coordinate({
    this.lat,
    this.lng,
  });

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  @override
  String toString() => "Coordinate(lat: $lat, lng: $lng)";
}

void main(List<String> args) {
  final Coordinate center = Coordinate(
    lat: "10.774377",
    lng: "106.703688",
  );

  print(center.toJson()); //  {lat: 10.774377, lng: 106.703688}
}
