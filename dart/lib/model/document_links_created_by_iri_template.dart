part of keyclic_sdk_api.api;

class DocumentLinksCreatedByIriTemplate {
  DocumentLinksCreatedByIriTemplate({
    this.mapping,
  });

  DocumentLinksCreatedByIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ContributionLinksContributorIriTemplateMapping.fromJson(
        json['mapping']);
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

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<DocumentLinksCreatedByIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <DocumentLinksCreatedByIriTemplate>[]
        : json
            .map((dynamic value) =>
                DocumentLinksCreatedByIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DocumentLinksCreatedByIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DocumentLinksCreatedByIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DocumentLinksCreatedByIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DocumentLinksCreatedByIriTemplate[mapping=$mapping, ]';
  }
}
