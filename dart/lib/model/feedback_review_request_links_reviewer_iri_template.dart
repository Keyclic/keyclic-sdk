part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReviewerIriTemplate {
  FeedbackReviewRequestLinksReviewerIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksReviewerIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReviewerIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<FeedbackReviewRequestLinksReviewerIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksReviewerIriTemplate>[]
        : json
            .map((value) =>
                FeedbackReviewRequestLinksReviewerIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksReviewerIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksReviewerIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksReviewerIriTemplate.fromJson(value));
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
    return 'FeedbackReviewRequestLinksReviewerIriTemplate[mapping=$mapping, ]';
  }
}
