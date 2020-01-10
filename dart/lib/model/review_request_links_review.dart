part of keyclic_sdk_api.api;

class ReviewRequestLinksReview {
  ReviewRequestLinksReview({
    this.href,
    this.iriTemplate,
  });

  factory ReviewRequestLinksReview.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReview(
      href: json['href'],
      iriTemplate:
          ReviewRequestLinksReviewIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the review associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksReviewIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReview &&
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

  static List<ReviewRequestLinksReview> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksReview>[]
        : json
            .map((dynamic value) => ReviewRequestLinksReview.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksReview> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksReview>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksReview.fromJson(value));
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
    return 'ReviewRequestLinksReview[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
