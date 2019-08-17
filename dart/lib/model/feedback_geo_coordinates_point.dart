part of keyclic_sdk_api.api;

class FeedbackGeoCoordinatesPoint {
  FeedbackGeoCoordinatesPoint({
    this.latitude,
    this.longitude,
    this.srid,
  });

  FeedbackGeoCoordinatesPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
    srid = json['srid'];
  }

  double latitude;

  double longitude;

  int srid;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackGeoCoordinatesPoint &&
        runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        srid == other.srid;
  }

  @override
  int get hashCode =>
      0 ^ latitude.hashCode ^ longitude.hashCode ^ srid.hashCode;

  static List<FeedbackGeoCoordinatesPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackGeoCoordinatesPoint>()
        : json
            .map((value) => FeedbackGeoCoordinatesPoint.fromJson(value))
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
      'latitude': latitude,
      'longitude': longitude,
      'srid': srid,
    };
  }

  @override
  String toString() {
    return 'FeedbackGeoCoordinatesPoint[latitude=$latitude, longitude=$longitude, srid=$srid, ]';
  }
}
