part of keyclic_sdk_api.api;

class DigitalDocumentLinksCreatedByIriTemplate {
  DigitalDocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory DigitalDocumentLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DigitalDocumentLinksCreatedByIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DigitalDocumentLinksCreatedByIriTemplate &&
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

  static List<DigitalDocumentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DigitalDocumentLinksCreatedByIriTemplate.fromJson(value))
            ?.toList() ??
        <DigitalDocumentLinksCreatedByIriTemplate>[];
  }

  static Map<String, DigitalDocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DigitalDocumentLinksCreatedByIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DigitalDocumentLinksCreatedByIriTemplate.fromJson(value));
        }) ??
        <String, DigitalDocumentLinksCreatedByIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DigitalDocumentLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
