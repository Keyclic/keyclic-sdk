part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplateMapping {
  FeedbackLinksImageIriTemplateMapping({
    this.image,
    this.feedback,
  });

  FeedbackLinksImageIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    image = json['image'];
    feedback = json['feedback'];
  }

  String image;

  String feedback;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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