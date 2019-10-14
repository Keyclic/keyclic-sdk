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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksLogoIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationLinksLogoIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <OrganizationLinksLogoIriTemplate>[]
        : json
            .map((dynamic value) =>
                OrganizationLinksLogoIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksLogoIriTemplate[mapping=$mapping, ]';
  }
}
