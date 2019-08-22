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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is BusinessActivity &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        alternateName == other.alternateName &&
        id == other.id &&
        metadataSchema == other.metadataSchema &&
        name == other.name &&
        type == other.type;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      links.hashCode ^
      alternateName.hashCode ^
      id.hashCode ^
      metadataSchema.hashCode ^
      name.hashCode ^
      type.hashCode;

  static List<BusinessActivity> listFromJson(List<dynamic> json) {
    return json == null
        ? <BusinessActivity>[]
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
}
