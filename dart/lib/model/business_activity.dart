part of keyclic_sdk_api.api;

class BusinessActivity {
  BusinessActivity({
    this.links,
    this.alternateName,
    this.createdAt,
    this.id,
    this.metadataSchema,
    this.name,
    this.type,
    this.updatedAt,
  });

  factory BusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return BusinessActivity(
      links: BusinessActivityLinks.fromJson(json['_links']),
      alternateName: json['alternateName'],
      createdAt: createdAt,
      id: json['id'],
      metadataSchema: BusinessActivitySchema.fromJson(json['metadataSchema']),
      name: json['name'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  BusinessActivityLinks links;

  String alternateName;

  DateTime createdAt;

  String id;

  BusinessActivitySchema metadataSchema;

  String name;

  String type;

  DateTime updatedAt;

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
        createdAt == other.createdAt &&
        id == other.id &&
        metadataSchema == other.metadataSchema &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= alternateName?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= metadataSchema?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<BusinessActivity> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => BusinessActivity.fromJson(value))
            ?.toList() ??
        <BusinessActivity>[];
  }

  static Map<String, BusinessActivity> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, BusinessActivity.fromJson(value));
        }) ??
        <String, BusinessActivity>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (alternateName != null) 'alternateName': alternateName,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (metadataSchema != null) 'metadataSchema': metadataSchema.toJson(),
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'BusinessActivity[links=$links, alternateName=$alternateName, createdAt=$createdAt, id=$id, metadataSchema=$metadataSchema, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
