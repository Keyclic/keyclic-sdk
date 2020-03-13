part of keyclic_sdk_api.api;

class ReviewLinksAuthor {
  ReviewLinksAuthor({
    this.href,
    this.iriTemplate,
  });

  factory ReviewLinksAuthor.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksAuthor(
      href: json['href'],
      iriTemplate: ReviewLinksAuthorIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the author associated to the given review. */
  String href;

  ReviewLinksAuthorIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksAuthor &&
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

  static List<ReviewLinksAuthor> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReviewLinksAuthor.fromJson(value))
            ?.toList() ??
        <ReviewLinksAuthor>[];
  }

  static Map<String, ReviewLinksAuthor> mapFromJson(Map<String, dynamic> json) {
    return json?.map<String, ReviewLinksAuthor>((String key, dynamic value) {
          return MapEntry(key, ReviewLinksAuthor.fromJson(value));
        }) ??
        <String, ReviewLinksAuthor>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewLinksAuthor[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
