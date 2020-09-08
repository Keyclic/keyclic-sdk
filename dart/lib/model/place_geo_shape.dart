part of keyclic_sdk_api.api;

class PlaceGeoShape {
  PlaceGeoShape({
    this.centroid,
    this.elevation,
    this.polygon,
  });

  factory PlaceGeoShape.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PlaceGeoShape(
      centroid: Point.fromJson(json['centroid']),
      elevation: json['elevation'],
      polygon: Polygon.fromJson(json['polygon']),
    );
  }

  Point centroid;

  int elevation;

  Polygon polygon;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeoShape &&
        runtimeType == other.runtimeType &&
        centroid == other.centroid &&
        elevation == other.elevation &&
        polygon == other.polygon;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= centroid?.hashCode ?? 0;
    hashCode ^= elevation?.hashCode ?? 0;
    hashCode ^= polygon?.hashCode ?? 0;

    return hashCode;
  }

  static List<PlaceGeoShape> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => PlaceGeoShape.fromJson(value))
            ?.toList() ??
        <PlaceGeoShape>[];
  }

  static Map<String, PlaceGeoShape> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, PlaceGeoShape>((String key, dynamic value) {
          return MapEntry(key, PlaceGeoShape.fromJson(value));
        }) ??
        <String, PlaceGeoShape>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (centroid != null) 'centroid': centroid.toJson(),
      if (elevation != null) 'elevation': elevation,
      if (polygon != null) 'polygon': polygon.toJson(),
    };
  }

  @override
  String toString() {
    return 'PlaceGeoShape[centroid=$centroid, elevation=$elevation, polygon=$polygon, ]';
  }
}
