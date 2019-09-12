part of keyclic_sdk_api.api;

class ReviewLinksItemReviewed {
  ReviewLinksItemReviewed({
    this.href,
    this.iriTemplate,
  });

  ReviewLinksItemReviewed.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReviewLinksItemReviewedIriTemplate.fromJson(json['iriTemplate']);
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

    hashCode ^= (href?.hashCode ?? 0);
    hashCode ^= (iriTemplate?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReviewLinksItemReviewed> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewLinksItemReviewed>[]
        : json
            .map((dynamic value) => ReviewLinksItemReviewed.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksItemReviewed> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksItemReviewed>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksItemReviewed.fromJson(value));
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
    return 'ReviewLinksItemReviewed[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
