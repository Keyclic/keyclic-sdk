part of keyclic_sdk_api.api;

class FeedbackLinksSelfIriTemplateMapping {
  FeedbackLinksSelfIriTemplateMapping();

  FeedbackLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    feedback = json['feedback'];
  }

  String feedback;

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksSelfIriTemplateMapping[feedback=$feedback, ]';
  }

  static List<FeedbackLinksSelfIriTemplateMapping> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackLinksSelfIriTemplateMapping>() : json.map((value) => FeedbackLinksSelfIriTemplateMapping.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksSelfIriTemplateMapping> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
