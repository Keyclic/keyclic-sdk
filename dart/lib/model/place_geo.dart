part of keyclic_sdk_api.api;

class PlaceGeo {
  PlaceGeo({
    this.centroid,
    this.elevation,
    this.polygon,
  });

  PlaceGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    centroid = PlaceGeoCentroid.fromJson(json['centroid']);
    elevation = json['elevation']?.toDouble();
    polygon = PlaceGeoPolygon.fromJson(json['polygon']);
  }

  PlaceGeoCentroid centroid;

  double elevation;

  PlaceGeoPolygon polygon;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeo &&
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

  static List<PlaceGeo> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceGeo>[]
        : json.map((dynamic value) => PlaceGeo.fromJson(value)).toList();
  }

  static Map<String, PlaceGeo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeo>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = PlaceGeo.fromJson(value));
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
    return 'PlaceGeo[centroid=$centroid, elevation=$elevation, polygon=$polygon, ]';
  }
}
