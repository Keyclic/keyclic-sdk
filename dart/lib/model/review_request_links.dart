part of keyclic_sdk_api.api;

class ReviewRequestLinks {
  ReviewRequestLinks({
    this.itemToReview,
    this.organization,
    this.review,
    this.reviewer,
    this.self,
  });

  ReviewRequestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    itemToReview =
        ReviewRequestLinksItemToReview.fromJson(json['itemToReview']);
    organization =
        ReviewRequestLinksOrganization.fromJson(json['organization']);
    review = ReviewRequestLinksReview.fromJson(json['review']);
    reviewer = ReviewRequestLinksReviewer.fromJson(json['reviewer']);
    self = ReviewRequestLinksSelf.fromJson(json['self']);
  }

  ReviewRequestLinksItemToReview itemToReview;

  ReviewRequestLinksOrganization organization;

  ReviewRequestLinksReview review;

  ReviewRequestLinksReviewer reviewer;

  ReviewRequestLinksSelf self;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinks &&
        runtimeType == other.runtimeType &&
        itemToReview == other.itemToReview &&
        organization == other.organization &&
        review == other.review &&
        reviewer == other.reviewer &&
        self == other.self;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= itemToReview?.hashCode ?? 0;
    hashCode ^= organization?.hashCode ?? 0;
    hashCode ^= review?.hashCode ?? 0;
    hashCode ^= reviewer?.hashCode ?? 0;
    hashCode ^= self?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequestLinks> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinks>[]
        : json
            .map((dynamic value) => ReviewRequestLinks.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinks> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinks.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (itemToReview != null) 'itemToReview': itemToReview,
      if (organization != null) 'organization': organization,
      if (review != null) 'review': review,
      if (reviewer != null) 'reviewer': reviewer,
      if (self != null) 'self': self,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self, ]';
  }
}
