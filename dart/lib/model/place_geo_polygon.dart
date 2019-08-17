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
    if (identical(this, other)) {
      return true;
    }

    return other is PlaceGeoPolygon &&
        runtimeType == other.runtimeType &&
        type == other.type;
  }

  @override
  int get hashCode => 0 ^ type.hashCode;

  Map<String, dynamic> toJson() {
    return {
      'features': features,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'PlaceGeoPolygon[features=$features, type=$type, ]';
  }

  static List<PlaceGeoPolygon> listFromJson(List<dynamic> json) {
    return json == null
        ? List<PlaceGeoPolygon>()
        : json.map((value) => PlaceGeoPolygon.fromJson(value)).toList();
  }

  static Map<String, PlaceGeoPolygon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeoPolygon>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = PlaceGeoPolygon.fromJson(value));
    }
    return map;
  }
}
