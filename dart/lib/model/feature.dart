part of keyclic_sdk_api.api;

class Feature {
  Feature({
    this.type,
    this.geometry,
    this.properties,
  });

  factory Feature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Feature(
      type: json['type'],
      geometry: FeatureGeometry.fromJson(json['geometry']),
      properties: json['properties'] is List
          ? List<String>.from(json['properties'])
          : null,
    );
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
  int get hashCode {
    int hashCode = 0;

    if (properties is List && properties.isNotEmpty) {
      hashCode ^= properties
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= geometry?.hashCode ?? 0;

    return hashCode;
  }

  static List<Feature> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Feature.fromJson(value))?.toList() ??
        <Feature>[];
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Feature>((String key, dynamic value) {
          return MapEntry(key, Feature.fromJson(value));
        }) ??
        <String, Feature>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (type != null) 'type': type,
      if (geometry != null) 'geometry': geometry.toJson(),
      if (properties != null) 'properties': properties,
    };
  }

  @override
  String toString() {
    return 'Feature[type=$type, geometry=$geometry, properties=$properties, ]';
  }
}
