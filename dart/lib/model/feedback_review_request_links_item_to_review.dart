part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksItemToReview {
  FeedbackReviewRequestLinksItemToReview({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksItemToReview.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the itemToReview associated to the given feedbackreviewrequest. */
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksItemToReview &&
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
    return 'FeedbackReviewRequestLinksItemToReview[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackReviewRequestLinksItemToReview> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksItemToReview>()
        : json
            .map((value) =>
                FeedbackReviewRequestLinksItemToReview.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksItemToReview> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksItemToReview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksItemToReview.fromJson(value));
    }
    return map;
  }
}
