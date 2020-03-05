part of keyclic_sdk_api.api;

class OrganizationLinksBusinessActivityIriTemplate {
  OrganizationLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  factory OrganizationLinksBusinessActivityIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OrganizationLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OrganizationLinksBusinessActivityIriTemplate &&
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

  static List<OrganizationLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OrganizationLinksBusinessActivityIriTemplate.fromJson(value))
            ?.toList() ??
        <OrganizationLinksBusinessActivityIriTemplate>[];
  }

  static Map<String, OrganizationLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key,
              OrganizationLinksBusinessActivityIriTemplate.fromJson(value));
        }) ??
        <String, OrganizationLinksBusinessActivityIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OrganizationLinksBusinessActivityIriTemplate[mapping=$mapping, ]';
  }
}
