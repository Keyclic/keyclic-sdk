part of keyclic_sdk_api.api;

class ApplicationLinksKnowledgeBase {
  ApplicationLinksKnowledgeBase({
    this.href,
    this.iriTemplate,
  });

  factory ApplicationLinksKnowledgeBase.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinksKnowledgeBase(
      href: json['href'],
      iriTemplate: ApplicationLinksKnowledgeBaseIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the knowledgeBase associated to the given application. */
  String href;

  ApplicationLinksKnowledgeBaseIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinksKnowledgeBase &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationLinksKnowledgeBase> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ApplicationLinksKnowledgeBase.fromJson(value))
            ?.toList() ??
        <ApplicationLinksKnowledgeBase>[];
  }

  static Map<String, ApplicationLinksKnowledgeBase> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinksKnowledgeBase>(
            (String key, dynamic value) {
          return MapEntry(key, ApplicationLinksKnowledgeBase.fromJson(value));
        }) ??
        <String, ApplicationLinksKnowledgeBase>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksKnowledgeBase[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
