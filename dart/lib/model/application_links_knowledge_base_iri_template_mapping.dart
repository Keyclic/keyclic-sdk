part of keyclic_sdk_api.api;

class ApplicationLinksKnowledgeBaseIriTemplateMapping {
  ApplicationLinksKnowledgeBaseIriTemplateMapping({
    this.knowledgeBase,
  });

  factory ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBaseIriTemplateMapping(
      knowledgeBase: json['knowledgeBase'],
    );
  }

  String knowledgeBase;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksKnowledgeBaseIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        knowledgeBase == other.knowledgeBase;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= knowledgeBase?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationLinksKnowledgeBaseIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ApplicationLinksKnowledgeBaseIriTemplateMapping>[];
  }

  static Map<String, ApplicationLinksKnowledgeBaseIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinksKnowledgeBaseIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(key,
              ApplicationLinksKnowledgeBaseIriTemplateMapping.fromJson(value));
        }) ??
        <String, ApplicationLinksKnowledgeBaseIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (knowledgeBase != null) 'knowledgeBase': knowledgeBase,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksKnowledgeBaseIriTemplateMapping[knowledgeBase=$knowledgeBase, ]';
  }
}
