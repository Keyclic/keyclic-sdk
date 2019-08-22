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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is MemberLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<MemberLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <MemberLinksOrganizationIriTemplate>[]
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

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'MemberLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
