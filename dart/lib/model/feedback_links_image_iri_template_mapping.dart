part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplateMapping {
  FeedbackLinksImageIriTemplateMapping();

  FeedbackLinksImageIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = json['image'];
    feedback = json['feedback'];
  }

  String image;

  String feedback;

  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'feedback': feedback,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImageIriTemplateMapping[image=$image, feedback=$feedback, ]';
  }

  static List<FeedbackLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksImageIriTemplateMapping>()
        : json
            .map(
                (value) => FeedbackLinksImageIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImageIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImageIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImageIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
