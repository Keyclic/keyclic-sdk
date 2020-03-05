part of keyclic_sdk_api.api;

class OrganizationLinksSelfIriTemplate {
  OrganizationLinksSelfIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksSelfIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
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
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<OrganizationLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksSelfIriTemplate>[];
  }

  static Map<String, OrganizationLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, OrganizationLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
