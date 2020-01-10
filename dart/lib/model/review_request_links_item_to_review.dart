part of keyclic_sdk_api.api;

class ReviewRequestLinksItemToReview {
  ReviewRequestLinksItemToReview({
    this.href,
    this.iriTemplate,
  });

  factory ReviewRequestLinksItemToReview.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReview(
      href: json['href'],
      iriTemplate: ReviewRequestLinksItemToReviewIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the itemToReview associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksItemToReviewIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksItemToReview &&
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

  static List<ReviewRequestLinksItemToReview> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksItemToReview>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksItemToReview.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksItemToReview> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksItemToReview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksItemToReview.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksItemToReview[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
