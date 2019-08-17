part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinks {
  FeedbackReviewRequestLinks({
    this.itemToReview,
    this.organization,
    this.review,
    this.reviewer,
    this.self,
  });

  FeedbackReviewRequestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    itemToReview =
        FeedbackReviewRequestLinksItemToReview.fromJson(json['itemToReview']);
    organization =
        FeedbackReviewRequestLinksOrganization.fromJson(json['organization']);
    review = FeedbackReviewRequestLinksReview.fromJson(json['review']);
    reviewer = FeedbackReviewRequestLinksReviewer.fromJson(json['reviewer']);
    self = FeedbackReviewRequestLinksSelf.fromJson(json['self']);
  }

  FeedbackReviewRequestLinksItemToReview itemToReview;

  FeedbackReviewRequestLinksOrganization organization;

  FeedbackReviewRequestLinksReview review;

  FeedbackReviewRequestLinksReviewer reviewer;

  FeedbackReviewRequestLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinks &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'itemToReview': itemToReview,
      'organization': organization,
      'review': review,
      'reviewer': reviewer,
      'self': self,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self, ]';
  }

  static List<FeedbackReviewRequestLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinks>()
        : json
            .map((value) => FeedbackReviewRequestLinks.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinks.fromJson(value));
    }
    return map;
  }
}
