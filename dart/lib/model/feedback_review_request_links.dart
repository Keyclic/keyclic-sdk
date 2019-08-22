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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinks &&
        runtimeType == other.runtimeType &&
        itemToReview == other.itemToReview &&
        organization == other.organization &&
        review == other.review &&
        reviewer == other.reviewer &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode =>
      0 ^
      itemToReview.hashCode ^
      organization.hashCode ^
      review.hashCode ^
      reviewer.hashCode ^
      self.hashCode;

  static List<FeedbackReviewRequestLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinks>[]
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
}
