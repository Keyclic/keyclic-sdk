// @dart=2.10
part of keyclic_sdk_api.api;

class OrganizationLinksLogoIriTemplate {
  OrganizationLinksLogoIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksLogoIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksLogoIriTemplate(
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
    return json
            ?.map((dynamic value) =>
                OrganizationLinksLogoIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksLogoIriTemplate>[];
  }

  static Map<String, OrganizationLinksLogoIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksLogoIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OrganizationLinksLogoIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksLogoIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksLogoIriTemplate[mapping=$mapping, ]';
  }
}
