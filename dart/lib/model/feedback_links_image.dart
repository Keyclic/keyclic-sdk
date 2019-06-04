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

  static List<FeedbackLinksImage> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksImage>()
        : json.map((value) => FeedbackLinksImage.fromJson(value)).toList();
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
}
