part of keyclic_sdk_api.api;

class ArticleLinksSelfIriTemplate {
  ArticleLinksSelfIriTemplate({
    this.mapping,
  });

  factory ArticleLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSelfIriTemplate(
      mapping: ArticleLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ArticleLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<ArticleLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ArticleLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) => ArticleLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ArticleLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ArticleLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ArticleLinksSelfIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ArticleLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
