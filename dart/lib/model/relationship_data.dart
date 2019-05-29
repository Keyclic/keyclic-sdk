part of keyclic_sdk_api.api;

class RelationshipData {
  RelationshipData();

  RelationshipData.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
  }

  String organization;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'RelationshipData[organization=$organization, ]';
  }

  static List<RelationshipData> listFromJson(List<dynamic> json) {
    return json == null ? List<RelationshipData>() : json.map((value) => RelationshipData.fromJson(value)).toList();
  }

  static Map<String, RelationshipData> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, RelationshipData>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RelationshipData.fromJson(value));
    }
    return map;
  }
}
