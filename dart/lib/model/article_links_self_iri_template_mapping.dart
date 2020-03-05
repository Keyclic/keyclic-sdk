part of keyclic_sdk_api.api;

class ArticleLinksSelfIriTemplateMapping {
  ArticleLinksSelfIriTemplateMapping({
    this.article,
  });

  factory ArticleLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplateMapping(
      article: json['article'],
    );
  }

  String article;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelfIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        article == other.article;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= article?.hashCode ?? 0;

    return hashCode;
  }

  static List<ArticleLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ArticleLinksSelfIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <ArticleLinksSelfIriTemplateMapping>[];
  }

  static Map<String, ArticleLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ArticleLinksSelfIriTemplateMapping.fromJson(value));
        }) ??
        <String, ArticleLinksSelfIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (article != null) 'article': article,
    };
  }

  @override
  String toString() {
    return 'ArticleLinksSelfIriTemplateMapping[article=$article, ]';
  }
}
