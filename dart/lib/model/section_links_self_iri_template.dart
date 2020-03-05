part of keyclic_sdk_api.api;

class SectionLinksSelfIriTemplate {
  SectionLinksSelfIriTemplate({
    this.mapping,
  });

  factory SectionLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return SectionLinksSelfIriTemplate(
      mapping: ArticleLinksSectionIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ArticleLinksSectionIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is SectionLinksSelfIriTemplate &&
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

  static List<SectionLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => SectionLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <SectionLinksSelfIriTemplate>[];
  }

  static Map<String, SectionLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, SectionLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, SectionLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'SectionLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
