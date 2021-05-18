part of keyclic_sdk_api.api;

class ReviewRequestLinks {
  ReviewRequestLinks({
    this.itemToReview,
    this.organization,
    this.review,
    this.reviewer,
    this.self,
  });

  factory ReviewRequestLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinks(
      itemToReview:
          ReviewRequestLinksItemToReview.fromJson(json['itemToReview']),
      organization:
          ReviewRequestLinksOrganization.fromJson(json['organization']),
      review: ReviewRequestLinksReview.fromJson(json['review']),
      reviewer: ReviewRequestLinksReviewer.fromJson(json['reviewer']),
      self: ReviewRequestLinksSelf.fromJson(json['self']),
    );
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
    return json
            ?.map((dynamic value) => ReviewRequestLinks.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinks>[];
  }

  static Map<String, ReviewRequestLinks> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinks>((String key, dynamic value) {
          return MapEntry(key, ReviewRequestLinks.fromJson(value));
        }) ??
        <String, ReviewRequestLinks>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (itemToReview != null) 'itemToReview': itemToReview.toJson(),
      if (organization != null) 'organization': organization.toJson(),
      if (review != null) 'review': review.toJson(),
      if (reviewer != null) 'reviewer': reviewer.toJson(),
      if (self != null) 'self': self.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinks[itemToReview=$itemToReview, organization=$organization, review=$review, reviewer=$reviewer, self=$self, ]';
  }
}
