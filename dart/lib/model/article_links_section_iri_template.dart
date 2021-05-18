part of keyclic_sdk_api.api;

class ArticleLinksSectionIriTemplate {
  ArticleLinksSectionIriTemplate({
    this.mapping,
  });

  factory ArticleLinksSectionIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ArticleLinksSectionIriTemplate(
      mapping: ArticleLinksSectionIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ArticleLinksSectionIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ArticleLinksSectionIriTemplate &&
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

  static List<ArticleLinksSectionIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ArticleLinksSectionIriTemplate.fromJson(value))
            ?.toList() ??
        <ArticleLinksSectionIriTemplate>[];
  }

  static Map<String, ArticleLinksSectionIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ArticleLinksSectionIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ArticleLinksSectionIriTemplate.fromJson(value));
        }) ??
        <String, ArticleLinksSectionIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ArticleLinksSectionIriTemplate[mapping=$mapping, ]';
  }
}
