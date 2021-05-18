part of keyclic_sdk_api.api;

class FeedbackDataGeo {
  FeedbackDataGeo({
    this.point,
    this.elevation,
  });

  factory FeedbackDataGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackDataGeo(
      point: FeedbackDataGeoPoint.fromJson(json['point']),
      elevation: json['elevation'],
    );
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
    return json
            ?.map((dynamic value) => FeedbackDataGeo.fromJson(value))
            ?.toList() ??
        <FeedbackDataGeo>[];
  }

  static Map<String, FeedbackDataGeo> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, FeedbackDataGeo>((String key, dynamic value) {
          return MapEntry(key, FeedbackDataGeo.fromJson(value));
        }) ??
        <String, FeedbackDataGeo>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (point != null) 'point': point.toJson(),
      if (elevation != null) 'elevation': elevation,
    };
  }

  @override
  String toString() {
    return 'FeedbackDataGeo[point=$point, elevation=$elevation, ]';
  }
}
