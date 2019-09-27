part of keyclic_sdk_api.api;

class MemberLinks {
  MemberLinks({
    this.organization,
    this.person,
    this.self,
  });

  MemberLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = MemberLinksOrganization.fromJson(json['organization']);
    person = MemberLinksPerson.fromJson(json['person']);
    self = MemberLinksSelf.fromJson(json['self']);
  }

  MemberLinksOrganization organization;

  MemberLinksPerson person;

  MemberLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinks &&
        runtimeType == other.runtimeType &&
        organization == other.organization &&
        person == other.person &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= person?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<MemberLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <MemberLinks>[]
        : json.map((dynamic value) => MemberLinks.fromJson(value)).toList();
  }

  static Map<String, MemberLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'person': person,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'MemberLinks[organization=$organization, person=$person, self=$self, ]';
  }
}
