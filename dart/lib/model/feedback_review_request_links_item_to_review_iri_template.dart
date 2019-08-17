part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksItemToReviewIriTemplate {
  FeedbackReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
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

    return other is FeedbackReviewRequestLinksItemToReviewIriTemplate &&
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
    return 'FeedbackReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackReviewRequestLinksItemToReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksItemToReviewIriTemplate>()
        : json
            .map((value) =>
                FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(
                    value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksItemToReviewIriTemplate>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksItemToReviewIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(value));
    }
    return map;
  }
}
