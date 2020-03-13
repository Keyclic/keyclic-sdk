part of keyclic_sdk_api.api;

class DocumentLinksCreatedByIriTemplate {
  DocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  factory DocumentLinksCreatedByIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DocumentLinksCreatedByIriTemplate(
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

    return other is DocumentLinksCreatedByIriTemplate &&
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

  static List<DocumentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DocumentLinksCreatedByIriTemplate.fromJson(value))
            ?.toList() ??
        <DocumentLinksCreatedByIriTemplate>[];
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DocumentLinksCreatedByIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, DocumentLinksCreatedByIriTemplate.fromJson(value));
        }) ??
        <String, DocumentLinksCreatedByIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DocumentLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
