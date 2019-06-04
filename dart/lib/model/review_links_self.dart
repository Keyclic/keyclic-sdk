part of keyclic_sdk_api.api;

class ReviewLinksSelf {
  ReviewLinksSelf({
    this.href,
    this.iriTemplate,
  });

  ReviewLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = ReviewLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given review. */
  String href;

  ReviewLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReviewLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReviewLinksSelf>()
        : json.map((value) => ReviewLinksSelf.fromJson(value)).toList();
  }

  static Map<String, ReviewLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelf.fromJson(value));
    }
    return map;
  }
}
