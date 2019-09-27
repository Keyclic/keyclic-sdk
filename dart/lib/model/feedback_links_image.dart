part of keyclic_sdk_api.api;

class FeedbackLinksImage {
  FeedbackLinksImage({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksImage.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackLinksImageIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the image associated to the given feedback. */
  String href;

  FeedbackLinksImageIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImage &&
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

  static List<FeedbackLinksImage> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksImage>[]
        : json
            .map((dynamic value) => FeedbackLinksImage.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImage> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImage.fromJson(value));
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
    return 'FeedbackLinksImage[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
