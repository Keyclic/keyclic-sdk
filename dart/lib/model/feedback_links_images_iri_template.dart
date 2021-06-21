// @dart=2.10
part of keyclic_sdk_api.api;

class FeedbackLinksImagesIriTemplate {
  FeedbackLinksImagesIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksImagesIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImagesIriTemplate(
      mapping: FeedbackLinksImageIriTemplateMapping.fromJson(json['mapping']),
    );
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

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackLinksImagesIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksImagesIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksImagesIriTemplate>[];
  }

  static Map<String, FeedbackLinksImagesIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksImagesIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackLinksImagesIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksImagesIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImagesIriTemplate[mapping=$mapping, ]';
  }
}
