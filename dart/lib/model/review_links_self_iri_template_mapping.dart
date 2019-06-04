part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplateMapping {
  ReviewLinksSelfIriTemplateMapping({
    this.review,
  });

  ReviewLinksSelfIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    review = json['review'];
  }

  String review;

  Map<String, dynamic> toJson() {
    return {
      'review': review,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksSelfIriTemplateMapping[review=$review, ]';
  }

  static List<ReviewLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ReviewLinksSelfIriTemplateMapping>()
        : json
            .map((value) => ReviewLinksSelfIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
