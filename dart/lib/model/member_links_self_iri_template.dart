part of keyclic_sdk_api.api;

class MemberLinksSelfIriTemplate {
  MemberLinksSelfIriTemplate();

  MemberLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = MemberLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  MemberLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<MemberLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<MemberLinksSelfIriTemplate>() : json.map((value) => MemberLinksSelfIriTemplate.fromJson(value)).toList();
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, MemberLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = MemberLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
