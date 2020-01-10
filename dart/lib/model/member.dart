part of keyclic_sdk_api.api;

class Member {
  Member({
    this.embedded,
    this.links,
    this.createdAt,
    this.id,
    this.roles,
    this.type,
    this.updatedAt,
  });

  factory Member.fromJson(Map<String, dynamic> json) {
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

    return Member(
      embedded: MemberEmbedded.fromJson(json['_embedded']),
      links: MemberLinks.fromJson(json['_links']),
      createdAt: createdAt,
      id: json['id'],
      roles: json['roles'] is List ? List<String>.from(json['roles']) : null,
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  MemberEmbedded embedded;

  MemberLinks links;

  DateTime createdAt;

  String id;

  List<String> roles;

  String type;

  DateTime updatedAt;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is Member &&
        runtimeType == other.runtimeType &&
        embedded == other.embedded &&
        links == other.links &&
        createdAt == other.createdAt &&
        id == other.id &&
        DeepCollectionEquality.unordered().equals(roles, other.roles) &&
        type == other.type &&
        updatedAt == other.updatedAt;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    if (roles is List && roles.isNotEmpty) {
      hashCode ^= roles
          .map((String element) => element.hashCode)
          .reduce((int value, int cursor) => value ^ cursor);
    }

    hashCode ^= embedded?.hashCode ?? 0;
    hashCode ^= links?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Member> listFromJson(List<dynamic> json) {
    return json == null
        ? <Member>[]
        : json.map((dynamic value) => Member.fromJson(value)).toList();
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Member>();
    if (json != null && json.isNotEmpty) {
      json.forEach(
          (String key, dynamic value) => map[key] = Member.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (embedded != null) '_embedded': embedded,
      if (links != null) '_links': links,
      if (createdAt != null) 'createdAt': createdAt.toUtc().toIso8601String(),
      if (id != null) 'id': id,
      if (roles != null) 'roles': roles,
      if (type != null) 'type': type,
      if (updatedAt != null) 'updatedAt': updatedAt.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Member[embedded=$embedded, links=$links, createdAt=$createdAt, id=$id, roles=$roles, type=$type, updatedAt=$updatedAt, ]';
  }
}
