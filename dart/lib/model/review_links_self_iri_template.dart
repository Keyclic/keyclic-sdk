part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplate {
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  ReviewLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(
        json['mapping']);
  }

  FeedbackReviewRequestLinksReviewIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReviewLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinksSelfIriTemplate>()
        : json
            .map((value) => ReviewLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelfIriTemplate.fromJson(value));
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
    return 'ReviewLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
