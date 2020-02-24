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

    DateTime updatedAt =
        json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    if (updatedAt is DateTime && updatedAt.isUtc == false) {
      updatedAt = DateTime.parse('${updatedAt.toIso8601String()}Z');
    }

    return Invitation(
      links: InvitationLinks.fromJson(json['_links']),
      createdAt: createdAt,
      expiredAt: InvitationDateTime.fromJson(json['expiredAt']),
      id: json['id'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  InvitationLinks links;

  DateTime createdAt;

  InvitationDateTime expiredAt;

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
    return json == null
        ? <Invitation>[]
        : json.map((dynamic value) => Invitation.fromJson(value)).toList();
  }

  static Map<String, Invitation> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Invitation>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Invitation.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (expiredAt != null) 'expiredAt': expiredAt,
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
