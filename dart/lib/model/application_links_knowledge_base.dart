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
    return json == null
        ? <ApplicationLinksKnowledgeBase>[]
        : json
            .map((dynamic value) =>
                ApplicationLinksKnowledgeBase.fromJson(value))
            .toList();
  }

  static Map<String, ApplicationLinksKnowledgeBase> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ApplicationLinksKnowledgeBase>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ApplicationLinksKnowledgeBase.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ApplicationLinksKnowledgeBase[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
