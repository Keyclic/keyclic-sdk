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
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReviewerIriTemplate &&
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
    return 'FeedbackReviewRequestLinksReviewerIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackReviewRequestLinksReviewerIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksReviewerIriTemplate>()
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
}
