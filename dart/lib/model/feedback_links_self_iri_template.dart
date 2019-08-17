part of keyclic_sdk_api.api;

class FeedbackLinksSelfIriTemplate {
  FeedbackLinksSelfIriTemplate({
    this.mapping,
  });

  FeedbackLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<FeedbackLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksSelfIriTemplate>()
        : json
            .map((value) => FeedbackLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksSelfIriTemplate.fromJson(value));
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
    return 'FeedbackLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
