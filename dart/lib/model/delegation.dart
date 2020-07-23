part of keyclic_sdk_api.api;

class Delegation {
  Delegation({
    this.embedded,
    this.links,
    this.createdAt,
    this.description,
    this.id,
    this.type,
    this.updatedAt,
  });

  factory Delegation.fromJson(Map<String, dynamic> json) {
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

    return Delegation(
      embedded: DelegationEmbedded.fromJson(json['_embedded']),
      links: DelegationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      description: json['description'],
      id: json['id'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  DelegationEmbedded embedded;

  DelegationLinks links;

  DateTime createdAt;

  String description;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Delegation &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        description == other.description &&
        id == other.id &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= description?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Delegation> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Delegation.fromJson(value))?.toList() ??
        <Delegation>[];
  }

  static Map<String, Delegation> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Delegation>((String key, dynamic value) {
          return MapEntry(key, Delegation.fromJson(value));
        }) ??
        <String, Delegation>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded.toJson(),
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (description != null) 'description': description,
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Delegation[embedded=$embedded, links=$links, createdAt=$createdAt, description=$description, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
