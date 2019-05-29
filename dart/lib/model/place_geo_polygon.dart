part of keyclic_sdk_api.api;

class PlaceGeoPolygon {
  PlaceGeoPolygon();

  PlaceGeoPolygon.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    features = Feature.listFromJson(json['features']);
  }

  String type;

  List<Feature> features;

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'features': features,
    };
  }

  @override
  String toString() {
    return 'PlaceGeoPolygon[type=$type, features=$features, ]';
  }

  static List<PlaceGeoPolygon> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceGeoPolygon>() : json.map((value) => PlaceGeoPolygon.fromJson(value)).toList();
  }

  static Map<String, PlaceGeoPolygon> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeoPolygon>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceGeoPolygon.fromJson(value));
    }
    return map;
  }
}
