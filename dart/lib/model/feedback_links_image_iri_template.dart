part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplate {
  FeedbackLinksImageIriTemplate({
    this.mapping,
  });

  FeedbackLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
    return json == null
        ? List<FeedbackLinksImageIriTemplate>()
        : json
            .map((value) => FeedbackLinksImageIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImageIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImageIriTemplate.fromJson(value));
    }
    return map;
  }
}
