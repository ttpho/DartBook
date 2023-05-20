class Coordinate {
  String? lat;
  String? lng;

  Coordinate({
    this.lat,
    this.lng,
  });

  Coordinate copyWith({
    String? lat,
    String? lng,
  }) {
    return Coordinate(
      lat: lat ?? this.lat,
      lng: lng ?? this.lng,
    );
  }

  @override
  String toString() => "Coordinate(lat: $lat, lng: $lng)";
}

void main(List<String> args) {
  final Coordinate center = Coordinate(
    lat: "10.774377",
    lng: "106.703688",
  );
  final Coordinate tower = center.copyWith(lng: "106.7029278");

  print(center); // Coordinate(lat: 10.774377, lng: 106.703688)
  print(tower); //  Coordinate(lat: 10.774377, lng: 106.7029278)
}
