part of keyclic_sdk_api.api;

class FeatureGeometry {
  FeatureGeometry({
    this.type,
    this.coordinates,
  });

  FeatureGeometry.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    coordinates = (json['coordinates']);
  }

  /// enum typeEnum {  Polygon,  Point,  };
  String type;

  List coordinates;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeatureGeometry &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        DeepCollectionEquality.unordered()
            .equals(coordinates, other.coordinates);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      type.hashCode ^
      coordinates.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<FeatureGeometry> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeatureGeometry>[]
        : json.map((value) => FeatureGeometry.fromJson(value)).toList();
  }

  static Map<String, FeatureGeometry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeatureGeometry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeatureGeometry.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates,
    };
  }

  @override
  String toString() {
    return 'FeatureGeometry[type=$type, coordinates=$coordinates, ]';
  }
}
