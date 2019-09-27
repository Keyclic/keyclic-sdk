part of keyclic_sdk_api.api;

class FeedbackDataGeo {
  FeedbackDataGeo({
    this.point,
    this.elevation,
  });

  FeedbackDataGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    point = FeedbackDataGeoPoint.fromJson(json['point']);
    elevation = json['elevation'];
  }

  FeedbackDataGeoPoint point;

  num elevation;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackDataGeo &&
        runtimeType == other.runtimeType &&
        point == other.point &&
        elevation == other.elevation;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= point?.hashCode ?? 0;
    hashCode ^= elevation?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackDataGeo> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackDataGeo>[]
        : json.map((dynamic value) => FeedbackDataGeo.fromJson(value)).toList();
  }

  static Map<String, FeedbackDataGeo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackDataGeo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackDataGeo.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'point': point,
      'elevation': elevation,
    };
  }

  @override
  String toString() {
    return 'FeedbackDataGeo[point=$point, elevation=$elevation, ]';
  }
}
