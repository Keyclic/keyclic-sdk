part of keyclic_sdk_api.api;

class PlacePatch {
  PlacePatch();

  PlacePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    branchCode = json['branchCode'];
    description = json['description'];
    name = json['name'];
  }

  String branchCode;

  String description;

  String name;

  Map<String, dynamic> toJson() {
    return {
      'branchCode': branchCode,
      'description': description,
      'name': name,
    };
  }

  @override
  String toString() {
    return 'PlacePatch[branchCode=$branchCode, description=$description, name=$name, ]';
  }

  static List<PlacePatch> listFromJson(List<dynamic> json) {
    return json == null ? List<PlacePatch>() : json.map((value) => PlacePatch.fromJson(value)).toList();
  }

  static Map<String, PlacePatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PlacePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PlacePatch.fromJson(value));
    }
    return map;
  }
}
