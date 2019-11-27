part of keyclic_sdk_api.api;

class ReviewRequestLinksSelf {
  ReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  ReviewRequestLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReviewRequestLinksSelfIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <ReviewRequestLinksSelf>[]
        : json
            .map((dynamic value) => ReviewRequestLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksSelf.fromJson(value));
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
    return 'ReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
