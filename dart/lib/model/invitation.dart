part of keyclic_sdk_api.api;

class Invitation {
  Invitation({
    this.links,
    this.createdAt,
    this.expiredAt,
    this.id,
    this.type,
    this.updatedAt,
  });

  factory Invitation.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    DateTime createdAt =
        json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    if (createdAt is DateTime && createdAt.isUtc == false) {
      createdAt = DateTime.parse('${createdAt.toIso8601String()}Z');
    }

    DateTime expiredAt =
        json['expiredAt'] == null ? null : DateTime.parse(json['expiredAt']);
    if (expiredAt is DateTime && expiredAt.isUtc == false) {
      expiredAt = DateTime.parse('${expiredAt.toIso8601String()}Z');
    }

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Invitation(
      links: InvitationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      expiredAt: expiredAt,
      id: json['id'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  InvitationLinks links;

  DateTime createdAt;

  DateTime expiredAt;

  String id;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Invitation &&
        runtimeType == other.runtimeType &&
        links == other.links &&
        createdAt == other.createdAt &&
        expiredAt == other.expiredAt &&
        id == other.id &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= expiredAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Invitation> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Invitation.fromJson(value))?.toList() ??
        <Invitation>[];
  }

  static Map<String, Invitation> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, Invitation.fromJson(value));
        }) ??
        <String, Invitation>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links.toJson(),
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (expiredAt != null) 'expiredAt': expiredAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Invitation[links=$links, createdAt=$createdAt, expiredAt=$expiredAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
