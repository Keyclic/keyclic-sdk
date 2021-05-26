part of keyclic_sdk_api.api;

class OrganizationLinksApplicationIriTemplate {
  OrganizationLinksApplicationIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksApplicationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksApplicationIriTemplate(
      mapping: ApplicationLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ApplicationLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksApplicationIriTemplate &&
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

  static List<OrganizationLinksApplicationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksApplicationIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksApplicationIriTemplate>[];
  }

  static Map<String, OrganizationLinksApplicationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OrganizationLinksApplicationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, OrganizationLinksApplicationIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksApplicationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksApplicationIriTemplate[mapping=$mapping, ]';
  }
}
