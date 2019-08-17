part of keyclic_sdk_api.api;

class BusinessActivity {
  BusinessActivity({
    this.links,
    this.alternateName,
    this.id,
    this.metadataSchema,
    this.name,
    this.type,
  });

  BusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    links = BusinessActivityLinks.fromJson(json['_links']);
    alternateName = json['alternateName'];
    id = json['id'];
    metadataSchema =
        BusinessActivityMetadataSchema.fromJson(json['metadataSchema']);
    name = json['name'];
    type = json['type'];
  }

  BusinessActivityLinks links;

  String alternateName;

  String id;

  BusinessActivityMetadataSchema metadataSchema;

  String name;

  String type;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivity &&
        runtimeType == other.runtimeType &&
        name == other.name;
  }

  @override
  int get hashCode => 0 ^ name.hashCode;

  Map<String, dynamic> toJson() {
    return {
      '_links': links,
      'alternateName': alternateName,
      'id': id,
      'metadataSchema': metadataSchema,
      'name': name,
      'type': type,
    };
  }

  @override
  String toString() {
    return 'BusinessActivity[links=$links, alternateName=$alternateName, id=$id, metadataSchema=$metadataSchema, name=$name, type=$type, ]';
  }

  static List<BusinessActivity> listFromJson(List<dynamic> json) {
    return json == null
        ? List<BusinessActivity>()
        : json.map((value) => BusinessActivity.fromJson(value)).toList();
  }

  static Map<String, BusinessActivity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, BusinessActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = BusinessActivity.fromJson(value));
    }
    return map;
  }
}
