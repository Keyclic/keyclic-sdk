part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReviewer {
  FeedbackReviewRequestLinksReviewer();

  FeedbackReviewRequestLinksReviewer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the reviewer associated to the given feedbackreviewrequest. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackReviewRequestLinksReviewer> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksReviewer>()
        : json
            .map((value) => FeedbackReviewRequestLinksReviewer.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksReviewer>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksReviewer.fromJson(value));
    }
    return map;
  }
}
