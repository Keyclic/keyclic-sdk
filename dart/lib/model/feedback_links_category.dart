part of keyclic_sdk_api.api;

class FeedbackLinksCategory {
  FeedbackLinksCategory();

  FeedbackLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the category associated to the given feedback. */
  String href;

  CategoryLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackLinksCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksCategory>()
        : json.map((value) => FeedbackLinksCategory.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksCategory> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksCategory.fromJson(value));
    }
    return map;
  }
}
