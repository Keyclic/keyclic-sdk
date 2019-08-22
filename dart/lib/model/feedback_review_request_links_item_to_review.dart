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
    iriTemplate = FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the itemToReview associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksItemToReviewIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksItemToReview &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<FeedbackReviewRequestLinksItemToReview> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksItemToReview>[]
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
}
