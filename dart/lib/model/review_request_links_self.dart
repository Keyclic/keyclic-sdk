part of keyclic_sdk_api.api;

class ReviewRequestLinksSelf {
  ReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  factory ReviewRequestLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksSelf(
      href: json['href'],
      iriTemplate:
          ReviewRequestLinksSelfIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the self associated to the given reviewrequest. */
  String href;

  ReviewRequestLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksSelf &&
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

  static List<ReviewRequestLinksSelf> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewRequestLinksSelf.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksSelf>[];
  }

  static Map<String, ReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, ReviewRequestLinksSelf>((String key, dynamic value) {
          return MapEntry(key, ReviewRequestLinksSelf.fromJson(value));
        }) ??
        <String, ReviewRequestLinksSelf>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
