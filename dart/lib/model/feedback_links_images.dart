part of keyclic_sdk_api.api;

class FeedbackLinksImages {
  FeedbackLinksImages();

  FeedbackLinksImages.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
  }

  String href;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImages[href=$href, ]';
  }

  static List<FeedbackLinksImages> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackLinksImages>() : json.map((value) => FeedbackLinksImages.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksImages> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackLinksImages.fromJson(value));
    }
    return map;
  }
}
