part of keyclic_sdk_api.api;

class ArticleLinksSelf {
  ArticleLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ArticleLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelf(
      href: json['href'],
      iriTemplate: ArticleLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given article. */
  String href;

  ArticleLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelf &&
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

  static List<ArticleLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <ArticleLinksSelf>[]
        : json
            .map((dynamic value) => ArticleLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, ArticleLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ArticleLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ArticleLinksSelf.fromJson(value));
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
    return 'ArticleLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
