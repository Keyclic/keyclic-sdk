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
    if (json['properties'] is List) {
      properties = List<String>.from(json['properties']);
    }
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
    return json == null
        ? <Feature>[]
        : json.map((dynamic value) => Feature.fromJson(value)).toList();
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
