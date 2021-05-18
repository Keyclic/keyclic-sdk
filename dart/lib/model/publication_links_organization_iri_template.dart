part of keyclic_sdk_api.api;

class PublicationLinksOrganizationIriTemplate {
  PublicationLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory PublicationLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return PublicationLinksOrganizationIriTemplate(
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

    return other is PublicationLinksOrganizationIriTemplate &&
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

  static List<PublicationLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                PublicationLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <PublicationLinksOrganizationIriTemplate>[];
  }

  static Map<String, PublicationLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, PublicationLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, PublicationLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, PublicationLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'PublicationLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
