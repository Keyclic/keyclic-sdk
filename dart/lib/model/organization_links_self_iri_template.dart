part of keyclic_sdk_api.api;

class OrganizationLinksSelfIriTemplate {
  OrganizationLinksSelfIriTemplate({
    this.mapping,
  });

  OrganizationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OrganizationLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<OrganizationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationLinksSelfIriTemplate>[]
        : json
            .map((value) => OrganizationLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksSelfIriTemplate.fromJson(value));
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
    return 'OrganizationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}