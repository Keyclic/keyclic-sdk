part of keyclic_sdk_api.api;

class MemberLinks {
  MemberLinks();

  MemberLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = MemberLinksSelf.fromJson(json['self']);
    person = MemberLinksPerson.fromJson(json['person']);
    organization = MemberLinksOrganization.fromJson(json['organization']);
  }

  MemberLinksSelf self;

  MemberLinksPerson person;

  MemberLinksOrganization organization;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'person': person,
      'organization': organization,
    };
  }

  @override
  String toString() {
    return 'MemberLinks[self=$self, person=$person, organization=$organization, ]';
  }

  static List<MemberLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberLinks>() : json.map((value) => MemberLinks.fromJson(value)).toList();
  }

  static Map<String, MemberLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberLinks.fromJson(value));
    }
    return map;
  }
}
