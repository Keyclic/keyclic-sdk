part of keyclic_sdk_api.api;

class PlaceGeo {
  PlaceGeo();

  PlaceGeo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    polygon = PlaceGeoPolygon.fromJson(json['polygon']);
    elevation = json['elevation']?.toDouble();
  }

  PlaceGeoPolygon polygon;

  double elevation;

  Map<String, dynamic> toJson() {
    return {
      'polygon': polygon,
      'elevation': elevation,
    };
  }

  @override
  String toString() {
    return 'PlaceGeo[polygon=$polygon, elevation=$elevation, ]';
  }

  static List<PlaceGeo> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceGeo>() : json.map((value) => PlaceGeo.fromJson(value)).toList();
  }

  static Map<String, PlaceGeo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceGeo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceGeo.fromJson(value));
    }
    return map;
  }
}
