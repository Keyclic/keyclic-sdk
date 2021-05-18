part of keyclic_sdk_api.api;

class Member {
  Member({
    this.embedded,
    this.links,
    this.contactPoint,
    this.createdAt,
    this.id,
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
      contactPoint: MemberContactPoint.fromJson(json['contactPoint']),
      createdAt: createdAt,
      id: json['id'],
      type: json['type'],
      updatedAt: updatedAt,
    );
  }

  MemberEmbedded embedded;

  MemberLinks links;

  MemberContactPoint contactPoint;

  DateTime createdAt;

  String id;

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
        contactPoint == other.contactPoint &&
        createdAt == other.createdAt &&
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
    hashCode ^= contactPoint?.hashCode ?? 0;
    hashCode ^= createdAt?.hashCode ?? 0;
    hashCode ^= id?.hashCode ?? 0;
    hashCode ^= type?.hashCode ?? 0;
    hashCode ^= updatedAt?.hashCode ?? 0;

    return hashCode;
  }

  static List<Member> listFromJson(List<dynamic> json) {
    return json?.map((dynamic value) => Member.fromJson(value))?.toList() ??
        <Member>[];
  }

  static Map<String, Member> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, Member>((String key, dynamic value) {
          return MapEntry(key, Member.fromJson(value));
        }) ??
        <String, Member>{};
  }

  Map<String, dynamic> toJson() {
    return {
      '_embedded': embedded?.toJson(),
      '_links': links?.toJson(),
      'contactPoint': contactPoint?.toJson(),
      'createdAt': createdAt?.toUtc()?.toIso8601String(),
      'id': id,
      'type': type,
      'updatedAt': updatedAt?.toUtc()?.toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'Member[embedded=$embedded, links=$links, contactPoint=$contactPoint, createdAt=$createdAt, id=$id, type=$type, updatedAt=$updatedAt, ]';
  }
}
