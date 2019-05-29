part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinks {
  FeedbackReviewRequestLinks();

  FeedbackReviewRequestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    self = FeedbackReviewRequestLinksSelf.fromJson(json['self']);
    itemToReview = FeedbackReviewRequestLinksItemToReview.fromJson(json['itemToReview']);
    organization = FeedbackReviewRequestLinksOrganization.fromJson(json['organization']);
    reviewer = FeedbackReviewRequestLinksReviewer.fromJson(json['reviewer']);
    review = FeedbackReviewRequestLinksReview.fromJson(json['review']);
  }

  FeedbackReviewRequestLinksSelf self;

  FeedbackReviewRequestLinksItemToReview itemToReview;

  FeedbackReviewRequestLinksOrganization organization;

  FeedbackReviewRequestLinksReviewer reviewer;

  FeedbackReviewRequestLinksReview review;

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'itemToReview': itemToReview,
      'organization': organization,
      'reviewer': reviewer,
      'review': review,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinks[self=$self, itemToReview=$itemToReview, organization=$organization, reviewer=$reviewer, review=$review, ]';
  }

  static List<FeedbackReviewRequestLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackReviewRequestLinks>() : json.map((value) => FeedbackReviewRequestLinks.fromJson(value)).toList();
  }

  static Map<String, FeedbackReviewRequestLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackReviewRequestLinks.fromJson(value));
    }
    return map;
  }
}
