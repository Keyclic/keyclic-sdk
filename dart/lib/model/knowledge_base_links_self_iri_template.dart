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
    return json == null
        ? <KnowledgeBaseLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) =>
                KnowledgeBaseLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, KnowledgeBaseLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, KnowledgeBaseLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = KnowledgeBaseLinksSelfIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'KnowledgeBaseLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
