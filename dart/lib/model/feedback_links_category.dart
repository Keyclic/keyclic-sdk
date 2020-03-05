part of keyclic_sdk_api.api;

class FeedbackLinksCategory {
  FeedbackLinksCategory({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksCategory(
      href: json['href'],
      iriTemplate:
          FeedbackLinksCategoryIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the category associated to the given feedback. */
  String href;

  FeedbackLinksCategoryIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksCategory &&
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

  static List<FeedbackLinksCategory> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksCategory.fromJson(value))
            ?.toList() ??
        <FeedbackLinksCategory>[];
  }

  static Map<String, FeedbackLinksCategory> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksCategory.fromJson(value));
        }) ??
        <String, FeedbackLinksCategory>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
