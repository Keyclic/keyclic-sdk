part of keyclic_sdk_api.api;

class MemberLinksSelfIriTemplateMapping {
  MemberLinksSelfIriTemplateMapping({
    this.organization,
    this.member,
  });

  MemberLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    organization = json['organization'];
    member = json['member'];
  }

  String organization;

  String member;

  Map<String, dynamic> toJson() {
    return {
      'organization': organization,
      'member': member,
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelfIriTemplateMapping[organization=$organization, member=$member, ]';
  }

  static List<MemberLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<MemberLinksSelfIriTemplateMapping>()
        : json
            .map((value) => MemberLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
