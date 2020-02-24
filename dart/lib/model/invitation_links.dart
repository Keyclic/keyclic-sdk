part of keyclic_sdk_api.api;

class InvitationLinks {
  InvitationLinks({
    this.member,
    this.self,
  });

  factory InvitationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InvitationLinks(
      member: InvitationLinksMember.fromJson(json['member']),
      self: InvitationLinksSelf.fromJson(json['self']),
    );
  }

  InvitationLinksMember member;

  InvitationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is InvitationLinks &&
        runtimeType == other.runtimeType &&
        member == other.member &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= member?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<InvitationLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <InvitationLinks>[]
        : json.map((dynamic value) => InvitationLinks.fromJson(value)).toList();
  }

  static Map<String, InvitationLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InvitationLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = InvitationLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (member != null) 'member': member,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'InvitationLinks[member=$member, self=$self, ]';
  }
}
