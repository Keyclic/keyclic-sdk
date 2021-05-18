part of keyclic_sdk_api.api;

class ReviewLinksItemReviewed {
  ReviewLinksItemReviewed({
    this.href,
    this.iriTemplate,
  });

  factory ReviewLinksItemReviewed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksItemReviewed(
      href: json['href'],
      iriTemplate:
          ReviewLinksItemReviewedIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the itemReviewed associated to the given review. */
  String href;

  ReviewLinksItemReviewedIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewed &&
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

  static List<ReviewLinksItemReviewed> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewLinksItemReviewed.fromJson(value))
            ?.toList() ??
        <ReviewLinksItemReviewed>[];
  }

  static Map<String, ReviewLinksItemReviewed> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ReviewLinksItemReviewed>((String key, dynamic value) {
          return MapEntry(key, ReviewLinksItemReviewed.fromJson(value));
        }) ??
        <String, ReviewLinksItemReviewed>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewLinksItemReviewed[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
