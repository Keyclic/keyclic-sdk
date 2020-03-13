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
    return json
            ?.map((dynamic value) =>
                FeedbackLinksCategoryIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksCategoryIriTemplate>[];
  }

  static Map<String, FeedbackLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksCategoryIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksCategoryIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksCategoryIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
