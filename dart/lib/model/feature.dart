part of keyclic_sdk_api.api;

class Feature {
  Feature({
    this.type,
    this.geometry,
    this.properties,
  });

  Feature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    geometry = FeatureGeometry.fromJson(json['geometry']);
    properties =
        (json['properties'] as List)?.map((item) => item as String)?.toList();
  }

  String type;

  FeatureGeometry geometry;

  List<String> properties;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Feature &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        geometry == other.geometry &&
        DeepCollectionEquality.unordered().equals(properties, other.properties);
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      type.hashCode ^
      geometry.hashCode ^
      properties.map((dynamic element) => element.hashCode).fold(0,
          (dynamic value, dynamic cursor) => value.hashCode ^ cursor.hashCode);

  static List<Feature> listFromJson(List<dynamic> json) {
    return json == null
        ? <Feature>[]
        : json.map((value) => Feature.fromJson(value)).toList();
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feature>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Feature.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'geometry': geometry,
      'properties': properties,
    };
  }

  @override
  String toString() {
    return 'Feature[type=$type, geometry=$geometry, properties=$properties, ]';
  }
}
