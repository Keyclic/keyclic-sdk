part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReview {
  FeedbackReviewRequestLinksReview({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksReview.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackReviewRequestLinksReviewIriTemplate.fromJson(
        json['iriTemplate']);
  }

  /* The URI of the review associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksReviewIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReview &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackReviewRequestLinksReview> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksReview>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestLinksReview.fromJson(value))
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
}
