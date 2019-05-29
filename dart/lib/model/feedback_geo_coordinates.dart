part of keyclic_sdk_api.api;

class FeedbackGeoCoordinates {
  FeedbackGeoCoordinates();

  FeedbackGeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    elevation = json['elevation']?.toDouble();
    point = FeedbackGeoCoordinatesPoint.fromJson(json['point']);
  }

  double elevation;
  // range from -10000 to 8000//

  FeedbackGeoCoordinatesPoint point;

  Map<String, dynamic> toJson() {
    return {
      'elevation': elevation,
      'point': point,
    };
  }

  @override
  String toString() {
    return 'FeedbackGeoCoordinates[elevation=$elevation, point=$point, ]';
  }

  static List<FeedbackGeoCoordinates> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackGeoCoordinates>() : json.map((value) => FeedbackGeoCoordinates.fromJson(value)).toList();
  }

  static Map<String, FeedbackGeoCoordinates> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackGeoCoordinates>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackGeoCoordinates.fromJson(value));
    }
    return map;
  }
}
