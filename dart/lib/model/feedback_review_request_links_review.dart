part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReview {
  FeedbackReviewRequestLinksReview();

  FeedbackReviewRequestLinksReview.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReviewLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the review associated to the given feedbackreviewrequest. */
  String href;

  ReviewLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksReview[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackReviewRequestLinksReview> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksReview>()
        : json
            .map((value) => FeedbackReviewRequestLinksReview.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksReview> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksReview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksReview.fromJson(value));
    }
    return map;
  }
}
