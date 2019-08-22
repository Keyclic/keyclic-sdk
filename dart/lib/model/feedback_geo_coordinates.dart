part of keyclic_sdk_api.api;

class FeedbackGeoCoordinates {
  FeedbackGeoCoordinates({
    this.elevation,
    this.point,
  });

  FeedbackGeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    elevation = json['elevation']?.toDouble();
    point = FeedbackGeoCoordinatesPoint.fromJson(json['point']);
  }

  /// range from -10000 to 8000

  double elevation;

  FeedbackGeoCoordinatesPoint point;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackGeoCoordinates &&
        runtimeType == other.runtimeType &&
        elevation == other.elevation &&
        point == other.point;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ elevation.hashCode ^ point.hashCode;

  static List<FeedbackGeoCoordinates> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackGeoCoordinates>[]
        : json.map((value) => FeedbackGeoCoordinates.fromJson(value)).toList();
  }

  static Map<String, FeedbackGeoCoordinates> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackGeoCoordinates>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackGeoCoordinates.fromJson(value));
    }
    return map;
  }

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
}
