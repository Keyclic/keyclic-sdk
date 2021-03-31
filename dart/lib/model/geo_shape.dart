part of keyclic_sdk_api.api;

class GeoShape {
  GeoShape({
    this.centroid,
    this.elevation,
    this.polygon,
  });

  factory GeoShape.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return GeoShape(
      centroid: GeoShapeCentroid.fromJson(json['centroid']),
      elevation: json['elevation'],
      polygon: Polygon.fromJson(json['polygon']),
    );
  }

  GeoShapeCentroid centroid;

  int elevation;

  Polygon polygon;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is GeoShape &&
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

  static List<GeoShape> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => GeoShape.fromJson(value))?.toList() ??
        <GeoShape>[];
  }

  static Map<String, GeoShape> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, GeoShape>((String key, dynamic value) {
          return MapEntry(key, GeoShape.fromJson(value));
        }) ??
        <String, GeoShape>{};
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
    return 'GeoShape[centroid=$centroid, elevation=$elevation, polygon=$polygon, ]';
  }
}
