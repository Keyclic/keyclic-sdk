// @dart=2.10
part of keyclic_sdk_api.api;

class ApplicationLinksKnowledgeBaseIriTemplate {
  ApplicationLinksKnowledgeBaseIriTemplate({
    this.mapping,
  });

  factory ApplicationLinksKnowledgeBaseIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBaseIriTemplate(
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

    return other is ApplicationLinksKnowledgeBaseIriTemplate &&
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

  static List<ApplicationLinksKnowledgeBaseIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ApplicationLinksKnowledgeBaseIriTemplate.fromJson(value))
            ?.toList() ??
        <ApplicationLinksKnowledgeBaseIriTemplate>[];
  }

  static Map<String, ApplicationLinksKnowledgeBaseIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinksKnowledgeBaseIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ApplicationLinksKnowledgeBaseIriTemplate.fromJson(value));
        }) ??
        <String, ApplicationLinksKnowledgeBaseIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksKnowledgeBaseIriTemplate[mapping=$mapping, ]';
  }
}
