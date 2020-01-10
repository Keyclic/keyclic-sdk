part of keyclic_sdk_api.api;

class FeedbackLinksCategoryIriTemplate {
  FeedbackLinksCategoryIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategoryIriTemplate &&
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

  static List<FeedbackLinksCategoryIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackLinksCategoryIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksCategoryIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksCategoryIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksCategoryIriTemplate.fromJson(value));
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
    return 'FeedbackLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
