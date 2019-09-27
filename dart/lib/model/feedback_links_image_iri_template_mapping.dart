part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplateMapping {
  FeedbackLinksImageIriTemplateMapping({
    this.feedback,
    this.image,
  });

  FeedbackLinksImageIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    feedback = json['feedback'];
    image = json['image'];
  }

  String feedback;

  String image;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImageIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        feedback == other.feedback &&
        image == other.image;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= feedback?.hashCode ?? 0;
    hashCode ^= image?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinksImageIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackLinksImageIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksImageIriTemplateMapping.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      'feedback': feedback,
      'image': image,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImageIriTemplateMapping[feedback=$feedback, image=$image, ]';
  }
}
