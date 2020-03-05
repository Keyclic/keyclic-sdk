part of keyclic_sdk_api.api;

class FeedbackGeoCoordinates {
  FeedbackGeoCoordinates({
    this.elevation,
    this.point,
  });

  factory FeedbackGeoCoordinates.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackGeoCoordinates(
      elevation: json['elevation']?.toDouble(),
      point: Point.fromJson(json['point']),
    );
  }

  /// range from -10000 to 8000
  double elevation;

  Point point;

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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= elevation?.hashCode ?? 0;
    hashCode ^= point?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackGeoCoordinates> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackGeoCoordinates.fromJson(value))
            ?.toList() ??
        <FeedbackGeoCoordinates>[];
  }

  static Map<String, FeedbackGeoCoordinates> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackGeoCoordinates.fromJson(value));
        }) ??
        <String, FeedbackGeoCoordinates>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (elevation != null) 'elevation': elevation,
      if (point != null) 'point': point.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackGeoCoordinates[elevation=$elevation, point=$point, ]';
  }
}
