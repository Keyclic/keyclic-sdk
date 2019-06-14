part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksSelfIriTemplate {
  FeedbackReviewRequestLinksSelfIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksSelfIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackReviewRequestLinksSelfIriTemplateMapping.fromJson(
        json['mapping']);
  }

  FeedbackReviewRequestLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksSelfIriTemplate &&
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
    return 'FeedbackReviewRequestLinksSelfIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackReviewRequestLinksSelfIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksSelfIriTemplate>()
        : json
            .map((value) =>
                FeedbackReviewRequestLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksSelfIriTemplate.fromJson(value));
    }
    return map;
  }
}
