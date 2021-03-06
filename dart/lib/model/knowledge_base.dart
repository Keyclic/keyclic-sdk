part of keyclic_sdk_api.api;

class KnowledgeBase {
  KnowledgeBase({
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  factory KnowledgeBase.fromJson(Map<String, dynamic> json) {
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

    return KnowledgeBase(
      links: KnowledgeBaseLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      name: json['name'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  KnowledgeBaseLinks links;

  DateTime createdAt;

  String description;

  String id;

  String name;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBase &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        name == other.name &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<KnowledgeBase> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => KnowledgeBase.fromJson(value))
            ?.toList() ??
        <KnowledgeBase>[];
  }

  static Map<String, KnowledgeBase> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, KnowledgeBase>((String key, dynamic value) {
          return MapEntry(key, KnowledgeBase.fromJson(value));
        }) ??
        <String, KnowledgeBase>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'KnowledgeBase[links=$links, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
