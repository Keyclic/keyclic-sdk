part of keyclic_sdk_api.api;

class ExternalService {
  ExternalService({
    this.links,
    this.contactPoint,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.type,
    this.updatedAt,
  });

  factory ExternalService.fromJson(Map<String, dynamic> json) {
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

    return ExternalService(
      links: ExternalServiceLinks.fromJson(json['_links']),
      contactPoint: ExternalServiceContactPoint.fromJson(json['contactPoint']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      name: json['name'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  ExternalServiceLinks links;

  ExternalServiceContactPoint contactPoint;

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

    return other is ExternalService &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        contactPoint == other.contactPoint &&
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
    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= name?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<ExternalService> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ExternalService.fromJson(value))
            ?.toList() ??
        <ExternalService>[];
  }

  static Map<String, ExternalService> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ExternalService.fromJson(value));
        }) ??
        <String, ExternalService>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (contactPoint != null) 'contactPoint': contactPoint.toJson(),
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
    return 'ExternalService[links=$links, contactPoint=$contactPoint, createdAt=$createdAt, description=$description, id=$id, name=$name, type=$type, updatedAt=$updatedAt, ]';
  }
}
