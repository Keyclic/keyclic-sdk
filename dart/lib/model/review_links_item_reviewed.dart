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
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewed && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReviewLinksItemReviewed> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinksItemReviewed>()
        : json.map((value) => ReviewLinksItemReviewed.fromJson(value)).toList();
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
