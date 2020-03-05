part of keyclic_sdk_api.api;

class FeedbackLinksImages {
  FeedbackLinksImages({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImages(
      href: json['href'],
      iriTemplate: FeedbackLinksImagesIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the images associated to the given feedback. */
  String href;

  FeedbackLinksImagesIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImages &&
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

  static List<FeedbackLinksImages> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksImages.fromJson(value))
            ?.toList() ??
        <FeedbackLinksImages>[];
  }

  static Map<String, FeedbackLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksImages.fromJson(value));
        }) ??
        <String, FeedbackLinksImages>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImages[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
