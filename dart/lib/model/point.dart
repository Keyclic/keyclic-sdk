part of keyclic_sdk_api.api;

class Point {
  Point({
    this.latitude,
    this.longitude,
    this.srid,
  });

  factory Point.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Point(
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
      srid: json['srid'],
    );
  }

  double latitude;

  double longitude;

  int srid;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Point &&
        runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        srid == other.srid;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= latitude?.hashCode ?? 0;
    hashCode ^= longitude?.hashCode ?? 0;
    hashCode ^= srid?.hashCode ?? 0;

    return hashCode;
  }

  static List<Point> listFromJson(List<dynamic> json) {
    return json == null
        ? <Point>[]
        : json.map((dynamic value) => Point.fromJson(value)).toList();
  }

  static Map<String, Point> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Point>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Point.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (srid != null) 'srid': srid,
    };
  }

  @override
  String toString() {
    return 'Point[latitude=$latitude, longitude=$longitude, srid=$srid, ]';
  }
}