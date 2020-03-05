part of keyclic_sdk_api.api;

class OccupantLinks {
  OccupantLinks({
    this.member,
    this.place,
    this.self,
  });

  factory OccupantLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OccupantLinks(
      member: OccupantLinksMember.fromJson(json['member']),
      place: OccupantLinksPlace.fromJson(json['place']),
      self: OccupantLinksSelf.fromJson(json['self']),
    );
  }

  OccupantLinksMember member;

  OccupantLinksPlace place;

  OccupantLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OccupantLinks &&
        runtimeType == other.runtimeType &&
        member == other.member &&
        place == other.place &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= place?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<OccupantLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OccupantLinks.fromJson(value))
            ?.toList() ??
        <OccupantLinks>[];
  }

  static Map<String, OccupantLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OccupantLinks.fromJson(value));
        }) ??
        <String, OccupantLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member.toJson(),
      if (place != null) 'place': place.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'OccupantLinks[member=$member, place=$place, self=$self, ]';
  }
}
