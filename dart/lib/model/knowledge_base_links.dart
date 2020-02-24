part of keyclic_sdk_api.api;

class KnowledgeBaseLinks {
  KnowledgeBaseLinks({
    this.self,
  });

  factory KnowledgeBaseLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return KnowledgeBaseLinks(
      self: KnowledgeBaseLinksSelf.fromJson(json['self']),
    );
  }

  KnowledgeBaseLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is KnowledgeBaseLinks &&
        runtimeType == other.runtimeType &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<KnowledgeBaseLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <KnowledgeBaseLinks>[]
        : json
            .map((dynamic value) => KnowledgeBaseLinks.fromJson(value))
            .toList();
  }

  static Map<String, KnowledgeBaseLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, KnowledgeBaseLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = KnowledgeBaseLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'KnowledgeBaseLinks[self=$self, ]';
  }
}
