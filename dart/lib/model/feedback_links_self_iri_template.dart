part of keyclic_sdk_api.api;

class FeedbackLinksSelfIriTemplate {
  FeedbackLinksSelfIriTemplate();

  FeedbackLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksSelfIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackLinksSelfIriTemplate>() : json.map((value) => FeedbackLinksSelfIriTemplate.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksSelfIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
