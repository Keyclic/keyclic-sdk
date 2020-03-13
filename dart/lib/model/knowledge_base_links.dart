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
    return json
            ?.map((dynamic value) => KnowledgeBaseLinks.fromJson(value))
            ?.toList() ??
        <KnowledgeBaseLinks>[];
  }

  static Map<String, KnowledgeBaseLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, KnowledgeBaseLinks>((String key, dynamic value) {
          return MapEntry(key, KnowledgeBaseLinks.fromJson(value));
        }) ??
        <String, KnowledgeBaseLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'KnowledgeBaseLinks[self=$self, ]';
  }
}
