part of keyclic_sdk_api.api;

class ReviewRequestLinksReviewer {
  ReviewRequestLinksReviewer({
    this.href,
    this.iriTemplate,
  });

  factory ReviewRequestLinksReviewer.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewer(
      href: json['href'],
      iriTemplate:
          ReviewRequestLinksReviewerIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the reviewer associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksReviewerIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewer &&
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

  static List<ReviewRequestLinksReviewer> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewRequestLinksReviewer.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksReviewer>[];
  }

  static Map<String, ReviewRequestLinksReviewer> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReviewRequestLinksReviewer.fromJson(value));
        }) ??
        <String, ReviewRequestLinksReviewer>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksReviewer[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
