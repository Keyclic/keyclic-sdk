part of keyclic_sdk_api.api;

class Polygon {
  Polygon({
    this.type,
    this.features,
  });

  factory Polygon.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return Polygon(
      type: json['type'],
      features: Feature.listFromJson(json['features']),
    );
  }

  String type;

  List<Feature> features;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Polygon &&
        runtimeType == other.runtimeType &&
        type == other.type &&
        DeepCollectionEquality.unordered().equals(features, other.features);
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (features is List && features.isNotEmpty) {
      hashCode ^= features
          .map((Feature element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= type?.hashCode ?? 0;

    return hashCode;
  }

  static List<Polygon> listFromJson(List<dynamic> json) {
    return json == null
        ? <Polygon>[]
        : json.map((dynamic value) => Polygon.fromJson(value)).toList();
  }

  static Map<String, Polygon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Polygon>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Polygon.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (type != null) 'type': type,
      if (features != null) 'features': features,
    };
  }

  @override
  String toString() {
    return 'Polygon[type=$type, features=$features, ]';
  }
}
