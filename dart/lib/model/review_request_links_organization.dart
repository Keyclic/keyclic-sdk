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
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksOrganization.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksOrganization>[];
  }

  static Map<String, ReviewRequestLinksOrganization> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksOrganization>(
            (String key, dynamic value) {
          return MapEntry(key, ReviewRequestLinksOrganization.fromJson(value));
        }) ??
        <String, ReviewRequestLinksOrganization>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
