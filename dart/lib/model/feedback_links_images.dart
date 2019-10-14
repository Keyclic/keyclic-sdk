part of keyclic_sdk_api.api;

class FeedbackLinksImages {
  FeedbackLinksImages({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackLinksImagesIriTemplate.fromJson(json['iriTemplate']);
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
    return json == null
        ? <FeedbackLinksImages>[]
        : json
            .map((dynamic value) => FeedbackLinksImages.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImages> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImages.fromJson(value));
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
    return 'FeedbackLinksImages[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
