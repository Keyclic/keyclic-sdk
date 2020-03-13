part of keyclic_sdk_api.api;

class FeedbackLinksImageIriTemplate {
  FeedbackLinksImageIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksImageIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksImageIriTemplate(
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

    return other is FeedbackLinksImageIriTemplate &&
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

  static List<FeedbackLinksImageIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksImageIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksImageIriTemplate>[];
  }

  static Map<String, FeedbackLinksImageIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksImageIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackLinksImageIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksImageIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksImageIriTemplate[mapping=$mapping, ]';
  }
}
