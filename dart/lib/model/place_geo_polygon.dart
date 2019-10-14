part of keyclic_sdk_api.api;

class PlaceGeoPolygon {
  PlaceGeoPolygon({
    this.features,
    this.type,
  });

  PlaceGeoPolygon.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    features = Feature.listFromJson(json['features']);
    type = json['type'];
  }

  List<Feature> features;

  String type;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeoPolygon &&
        runtimeType == other.runtimeType &&
        DeepCollectionEquality.unordered().equals(features, other.features) &&
        type == other.type;
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

  static List<PlaceGeoPolygon> listFromJson(List<dynamic> json) {
    return json == null
        ? <PlaceGeoPolygon>[]
        : json.map((dynamic value) => PlaceGeoPolygon.fromJson(value)).toList();
  }

  static Map<String, PlaceGeoPolygon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeoPolygon>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceGeoPolygon.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (features != null) 'features': features,
      if (type != null) 'type': type,
    };
  }

  @override
  String toString() {
    return 'PlaceGeoPolygon[features=$features, type=$type, ]';
  }
}
