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
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImages && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<FeedbackLinksImages> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksImages>()
        : json.map((value) => FeedbackLinksImages.fromJson(value)).toList();
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
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImages[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
