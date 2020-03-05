part of keyclic_sdk_api.api;

class ArticleLinksSection {
  ArticleLinksSection({
    this.href,
    this.iriTemplate,
  });

  factory ArticleLinksSection.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSection(
      href: json['href'],
      iriTemplate: ArticleLinksSectionIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the section associated to the given article. */
  String href;

  ArticleLinksSectionIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSection &&
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

  static List<ArticleLinksSection> listFromJson(List<dynamic> json) {
    return json == null
        ? <ArticleLinksSection>[]
        : json
            .map((dynamic value) => ArticleLinksSection.fromJson(value))
            .toList();
  }

  static Map<String, ArticleLinksSection> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ArticleLinksSection>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ArticleLinksSection.fromJson(value));
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
    return 'ArticleLinksSection[href=$href, iriTemplate=$iriTemplate, ]';
  }
}