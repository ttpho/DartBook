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

  Map<String, dynamic> toJson() {
    return {
      'lat': lat,
      'lng': lng,
    };
  }

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(
      lat: json['lat'] as String?,
      lng: json['lng'] as String?,
    );
  }

  @override
  String toString() => "Coordinate(lat: $lat, lng: $lng)";

  @override
  int get hashCode => Object.hash(lat, lng);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Coordinate &&
          runtimeType == other.runtimeType &&
          lat == other.lat &&
          lng == other.lng);
}
