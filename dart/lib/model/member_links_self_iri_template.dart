part of keyclic_sdk_api.api;

class MemberLinksSelfIriTemplate {
  MemberLinksSelfIriTemplate({
    this.mapping,
  });

  MemberLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = MemberLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  MemberLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<MemberLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<MemberLinksSelfIriTemplate>()
        : json
            .map((value) => MemberLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'MemberLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
