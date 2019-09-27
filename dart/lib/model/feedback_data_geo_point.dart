part of keyclic_sdk_api.api;

class FeedbackDataGeoPoint {
  FeedbackDataGeoPoint({
    this.latitude,
    this.longitude,
    this.srid,
  });

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

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackDataGeoPoint &&
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

  static List<FeedbackDataGeoPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackDataGeoPoint>[]
        : json
            .map((dynamic value) => FeedbackDataGeoPoint.fromJson(value))
            .toList();
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
}
