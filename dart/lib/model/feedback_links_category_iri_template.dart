part of keyclic_sdk_api.api;

class FeedbackLinksCategoryIriTemplate {
  FeedbackLinksCategoryIriTemplate({
    this.mapping,
  });

  FeedbackLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategoryIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<FeedbackLinksCategoryIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksCategoryIriTemplate>()
        : json
            .map((value) => FeedbackLinksCategoryIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
