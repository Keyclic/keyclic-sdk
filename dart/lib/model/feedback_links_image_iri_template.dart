part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplate {
  FeedbackLinksImageIriTemplate();

  FeedbackLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksImageIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImageIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackLinksImageIriTemplate>() : json.map((value) => FeedbackLinksImageIriTemplate.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksImageIriTemplate> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackLinksImageIriTemplate.fromJson(value));
    }
    return map;
  }
}
