part of keyclic_sdk_api.api;

class FeedbackDataGeoPoint {
  FeedbackDataGeoPoint();

  FeedbackDataGeoPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    latitude = json['latitude'];
    longitude = json['longitude'];
    srid = json['srid'];
  }

  num latitude;

  num longitude;

  num srid;

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
      'srid': srid,
    };
  }

  @override
  String toString() {
    return 'FeedbackDataGeoPoint[latitude=$latitude, longitude=$longitude, srid=$srid, ]';
  }

  static List<FeedbackDataGeoPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackDataGeoPoint>()
        : json.map((value) => FeedbackDataGeoPoint.fromJson(value)).toList();
  }

  static Map<String, FeedbackDataGeoPoint> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackDataGeoPoint>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackDataGeoPoint.fromJson(value));
    }
    return map;
  }
}
