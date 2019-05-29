part of keyclic_sdk_api.api;

class BusinessActivity {
  BusinessActivity();

  BusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    alternateName = json['alternateName'];
    name = json['name'];
    id = json['id'];
    type = json['type'];
    metadataSchema = BusinessActivityMetadataSchema.fromJson(json['metadataSchema']);
    links = BusinessActivityLinks.fromJson(json['_links']);
  }

  String alternateName;

  String name;

  String id;

  String type;

  BusinessActivityMetadataSchema metadataSchema;

  BusinessActivityLinks links;

  Map<String, dynamic> toJson() {
    return {
      'alternateName': alternateName,
      'name': name,
      'id': id,
      'type': type,
      'metadataSchema': metadataSchema,
      '_links': links,
    };
  }

  @override
  String toString() {
    return 'BusinessActivity[alternateName=$alternateName, name=$name, id=$id, type=$type, metadataSchema=$metadataSchema, links=$links, ]';
  }

  static List<BusinessActivity> listFromJson(List<dynamic> json) {
    return json == null ? List<BusinessActivity>() : json.map((value) => BusinessActivity.fromJson(value)).toList();
  }

  static Map<String, BusinessActivity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BusinessActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BusinessActivity.fromJson(value));
    }
    return map;
  }
}
