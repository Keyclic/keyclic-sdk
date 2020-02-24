part of keyclic_sdk_api.api;

class ArticleLinks {
  ArticleLinks({
    this.section,
    this.self,
  });

  factory ArticleLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinks(
      section: ArticleLinksSection.fromJson(json['section']),
      self: ArticleLinksSelf.fromJson(json['self']),
    );
  }

  ArticleLinksSection section;

  ArticleLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinks &&
        runtimeType == other.runtimeType &&
        section == other.section &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= section?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ArticleLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ArticleLinks>[]
        : json.map((dynamic value) => ArticleLinks.fromJson(value)).toList();
  }

  static Map<String, ArticleLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ArticleLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (section != null) 'section': section,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'ArticleLinks[section=$section, self=$self, ]';
  }
}
