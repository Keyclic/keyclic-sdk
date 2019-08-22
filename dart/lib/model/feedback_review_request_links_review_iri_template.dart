part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReviewIriTemplate {
  FeedbackReviewRequestLinksReviewIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(
        json['mapping']);
  }

  FeedbackReviewRequestLinksReviewIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReviewIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<FeedbackReviewRequestLinksReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksReviewIriTemplate>[]
        : json
            .map((value) =>
                FeedbackReviewRequestLinksReviewIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksReviewIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksReviewIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksReviewIriTemplate.fromJson(value));
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
    return 'FeedbackReviewRequestLinksReviewIriTemplate[mapping=$mapping, ]';
  }
}
