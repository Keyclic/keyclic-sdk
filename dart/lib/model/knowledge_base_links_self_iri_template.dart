// @dart=2.10
part of keyclic_sdk_api.api;

class KnowledgeBaseLinksSelfIriTemplate {
  KnowledgeBaseLinksSelfIriTemplate({
    this.mapping,
  });

  factory KnowledgeBaseLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return KnowledgeBaseLinksSelfIriTemplate(
      mapping: ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ApplicationLinksKnowledgeBaseIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinksSelfIriTemplate &&
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

  static List<KnowledgeBaseLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                KnowledgeBaseLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <KnowledgeBaseLinksSelfIriTemplate>[];
  }

  static Map<String, KnowledgeBaseLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, KnowledgeBaseLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, KnowledgeBaseLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, KnowledgeBaseLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'KnowledgeBaseLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
