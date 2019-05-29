part of keyclic_sdk_api.api;

class PlaceData {
  PlaceData();

  PlaceData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    name = json['name'];
    branchCode = json['branchCode'];
    polygon = json['polygon'];
  }

  String name;

  String branchCode;

  String polygon;

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'branchCode': branchCode,
      'polygon': polygon,
    };
  }

  @override
  String toString() {
    return 'PlaceData[name=$name, branchCode=$branchCode, polygon=$polygon, ]';
  }

  static List<PlaceData> listFromJson(List<dynamic> json) {
    return json == null ? List<PlaceData>() : json.map((value) => PlaceData.fromJson(value)).toList();
  }

  static Map<String, PlaceData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlaceData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlaceData.fromJson(value));
    }
    return map;
  }
}
