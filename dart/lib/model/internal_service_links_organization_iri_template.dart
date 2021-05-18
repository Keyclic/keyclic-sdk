part of keyclic_sdk_api.api;

class InternalServiceLinksOrganizationIriTemplate {
  InternalServiceLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory InternalServiceLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return InternalServiceLinksOrganizationIriTemplate(
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

    return other is InternalServiceLinksOrganizationIriTemplate &&
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

  static List<InternalServiceLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                InternalServiceLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <InternalServiceLinksOrganizationIriTemplate>[];
  }

  static Map<String, InternalServiceLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, InternalServiceLinksOrganizationIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, InternalServiceLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, InternalServiceLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'InternalServiceLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
