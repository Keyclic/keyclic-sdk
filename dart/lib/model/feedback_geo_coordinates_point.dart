part of keyclic_sdk_api.api;

class FeedbackGeoCoordinatesPoint {
  FeedbackGeoCoordinatesPoint({
    this.latitude,
    this.longitude,
    this.srid,
  });

  factory FeedbackGeoCoordinatesPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackGeoCoordinatesPoint(
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

    return other is FeedbackGeoCoordinatesPoint &&
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

  static List<FeedbackGeoCoordinatesPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackGeoCoordinatesPoint>[]
        : json
            .map((dynamic value) => FeedbackGeoCoordinatesPoint.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackGeoCoordinatesPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackGeoCoordinatesPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackGeoCoordinatesPoint.fromJson(value));
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
    return 'FeedbackGeoCoordinatesPoint[latitude=$latitude, longitude=$longitude, srid=$srid, ]';
  }
}
