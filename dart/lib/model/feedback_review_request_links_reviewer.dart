part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReviewer {
  FeedbackReviewRequestLinksReviewer({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksReviewer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackReviewRequestLinksReviewerIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the reviewer associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksReviewerIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReviewer &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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
}
