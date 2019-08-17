part of keyclic_sdk_api.api;

class MemberLinksOrganizationIriTemplate {
  MemberLinksOrganizationIriTemplate({
    this.mapping,
  });

  MemberLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'MemberLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }

  static List<MemberLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<MemberLinksOrganizationIriTemplate>()
        : json
            .map((value) => MemberLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, MemberLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, MemberLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = MemberLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }
}
