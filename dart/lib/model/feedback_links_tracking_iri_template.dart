part of keyclic_sdk_api.api;

class FeedbackLinksTrackingIriTemplate {
  FeedbackLinksTrackingIriTemplate({
    this.mapping,
  });

  FeedbackLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is FeedbackLinksTrackingIriTemplate &&
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
    return 'FeedbackLinksTrackingIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksTrackingIriTemplate>()
        : json
            .map((value) => FeedbackLinksTrackingIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksTrackingIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksTrackingIriTemplate.fromJson(value));
    }
    return map;
  }
}
