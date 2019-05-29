part of keyclic_sdk_api.api;

class FeedbackGeoCoordinatesPoint {
  FeedbackGeoCoordinatesPoint();

  FeedbackGeoCoordinatesPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    latitude = json['latitude']?.toDouble();
    longitude = json['longitude']?.toDouble();
    srid = json['srid'];
  }

  double latitude;

  double longitude;

  int srid;

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

  static List<FeedbackGeoCoordinatesPoint> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackGeoCoordinatesPoint>() : json.map((value) => FeedbackGeoCoordinatesPoint.fromJson(value)).toList();
  }

  static Map<String, FeedbackGeoCoordinatesPoint> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackGeoCoordinatesPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackGeoCoordinatesPoint.fromJson(value));
    }
    return map;
  }
}
