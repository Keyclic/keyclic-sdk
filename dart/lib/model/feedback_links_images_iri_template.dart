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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksImagesIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<FeedbackLinksImagesIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksImagesIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackLinksImagesIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImagesIriTemplate[mapping=$mapping, ]';
  }
}
