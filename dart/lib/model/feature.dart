part of keyclic_sdk_api.api;

class Feature {
  Feature();

  Feature.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    type = json['type'];
    geometry = FeatureGeometry.fromJson(json['geometry']);
    properties = (json['properties'] as List)?.map((item) => item as String)?.toList();
  }

  String type;

  FeatureGeometry geometry;

  List<String> properties;

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

  static List<Feature> listFromJson(List<dynamic> json) {
    return json == null ? List<Feature>() : json.map((value) => Feature.fromJson(value)).toList();
  }

  static Map<String, Feature> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Feature>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Feature.fromJson(value));
    }
    return map;
  }
}
