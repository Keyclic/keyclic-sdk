part of keyclic_sdk_api.api;

class ApplicationLinks {
  ApplicationLinks({
    this.knowledgeBase,
    this.self,
  });

  factory ApplicationLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ApplicationLinks(
      knowledgeBase:
          ApplicationLinksKnowledgeBase.fromJson(json['knowledgeBase']),
      self: ApplicationLinksSelf.fromJson(json['self']),
    );
  }

  ApplicationLinksKnowledgeBase knowledgeBase;

  ApplicationLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ApplicationLinks &&
        runtimeType == other.runtimeType &&
        knowledgeBase == other.knowledgeBase &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= knowledgeBase?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ApplicationLinks> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ApplicationLinks.fromJson(value))
            ?.toList() ??
        <ApplicationLinks>[];
  }

  static Map<String, ApplicationLinks> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ApplicationLinks>((String key, dynamic value) {
          return MapEntry(key, ApplicationLinks.fromJson(value));
        }) ??
        <String, ApplicationLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (knowledgeBase != null) 'knowledgeBase': knowledgeBase.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'ApplicationLinks[knowledgeBase=$knowledgeBase, self=$self, ]';
  }
}
