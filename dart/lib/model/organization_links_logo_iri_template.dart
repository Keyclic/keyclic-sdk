part of keyclic_sdk_api.api;

class OrganizationLinksLogoIriTemplate {
  OrganizationLinksLogoIriTemplate({
    this.mapping,
  });

  OrganizationLinksLogoIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is OrganizationLinksLogoIriTemplate &&
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
    return 'OrganizationLinksLogoIriTemplate[mapping=$mapping, ]';
  }

  static List<OrganizationLinksLogoIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<OrganizationLinksLogoIriTemplate>()
        : json
            .map((value) => OrganizationLinksLogoIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, OrganizationLinksLogoIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OrganizationLinksLogoIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OrganizationLinksLogoIriTemplate.fromJson(value));
    }
    return map;
  }
}
