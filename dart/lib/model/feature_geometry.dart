part of keyclic_sdk_api.api;

class FeatureGeometry {
  FeatureGeometry();

  FeatureGeometry.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    coordinates = (json['coordinates']);
  }

  String type;
  //enum typeEnum {  Polygon,  Point,  };

  List coordinates;

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

  static List<FeatureGeometry> listFromJson(List<dynamic> json) {
    return json == null ? List<FeatureGeometry>() : json.map((value) => FeatureGeometry.fromJson(value)).toList();
  }

  static Map<String, FeatureGeometry> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeatureGeometry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeatureGeometry.fromJson(value));
    }
    return map;
  }
}
