part of keyclic_sdk_api.api;

class ReviewRequestLinksOrganization {
  ReviewRequestLinksOrganization({
    this.href,
    this.iriTemplate,
  });

  factory ReviewRequestLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksOrganization(
      href: json['href'],
      iriTemplate: ReviewRequestLinksOrganizationIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the organization associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksOrganizationIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksOrganization &&
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

  static List<ReviewRequestLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksOrganization>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksOrganization.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksOrganization.fromJson(value));
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
    return 'ReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
