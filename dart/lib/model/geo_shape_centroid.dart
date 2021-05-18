part of keyclic_sdk_api.api;

class GeoShapeCentroid {
  GeoShapeCentroid({
    this.latitude,
    this.longitude,
  });

  factory GeoShapeCentroid.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GeoShapeCentroid(
      latitude: json['latitude']?.toDouble(),
      longitude: json['longitude']?.toDouble(),
    );
  }

  double latitude;

  double longitude;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoShapeCentroid &&
        runtimeType == other.runtimeType &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= latitude?.hashCode ?? 0;
    hashCode ^= longitude?.hashCode ?? 0;

    return hashCode;
  }

  static List<GeoShapeCentroid> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => GeoShapeCentroid.fromJson(value))
            ?.toList() ??
        <GeoShapeCentroid>[];
  }

  static Map<String, GeoShapeCentroid> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, GeoShapeCentroid>((String key, dynamic value) {
          return MapEntry(key, GeoShapeCentroid.fromJson(value));
        }) ??
        <String, GeoShapeCentroid>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'GeoShapeCentroid[latitude=$latitude, longitude=$longitude, ]';
  }
}
