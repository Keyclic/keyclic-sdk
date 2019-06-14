part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksSelf {
  FeedbackReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        FeedbackReviewRequestLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksSelf &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackReviewRequestLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksSelf>()
        : json
            .map((value) => FeedbackReviewRequestLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksSelf.fromJson(value));
    }
    return map;
  }
}
