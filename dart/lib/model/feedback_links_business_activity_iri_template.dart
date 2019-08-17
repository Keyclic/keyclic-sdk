part of keyclic_sdk_api.api;

class FeedbackLinksBusinessActivityIriTemplate {
  FeedbackLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  FeedbackLinksBusinessActivityIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        BusinessActivityLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivityIriTemplate &&
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
    return 'FeedbackLinksBusinessActivityIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksBusinessActivityIriTemplate>()
        : json
            .map((value) =>
                FeedbackLinksBusinessActivityIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksBusinessActivityIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksBusinessActivityIriTemplate.fromJson(value));
    }
    return map;
  }
}
