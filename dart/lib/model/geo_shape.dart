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
      centroid: Object.fromJson(json['centroid']),
      elevation: json['elevation'],
      polygon: Object.fromJson(json['polygon']),
    );
  }

  Object centroid;

  int elevation;

  Object polygon;

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
    return json == null
        ? <GeoShape>[]
        : json.map((dynamic value) => GeoShape.fromJson(value)).toList();
  }

  static Map<String, GeoShape> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, GeoShape>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = GeoShape.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (centroid != null) 'centroid': centroid,
      if (elevation != null) 'elevation': elevation,
      if (polygon != null) 'polygon': polygon,
    };
  }

  @override
  String toString() {
    return 'GeoShape[centroid=$centroid, elevation=$elevation, polygon=$polygon, ]';
  }
}
