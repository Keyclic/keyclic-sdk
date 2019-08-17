part of keyclic_sdk_api.api;

class FeedbackLinksImagesIriTemplate {
  FeedbackLinksImagesIriTemplate({
    this.mapping,
  });

  FeedbackLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksImageIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImagesIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksImagesIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksImagesIriTemplate>()
        : json
            .map((value) => FeedbackLinksImagesIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksImagesIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksImagesIriTemplate.fromJson(value));
    }
    return map;
  }
}
