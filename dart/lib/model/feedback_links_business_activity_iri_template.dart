part of keyclic_sdk_api.api;

class FeedbackLinksBusinessActivityIriTemplate {
  FeedbackLinksBusinessActivityIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksBusinessActivityIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksBusinessActivityIriTemplate(
      mapping: BusinessActivityLinksImageIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  BusinessActivityLinksImageIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivityIriTemplate &&
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

  static List<FeedbackLinksBusinessActivityIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksBusinessActivityIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksBusinessActivityIriTemplate>[];
  }

  static Map<String, FeedbackLinksBusinessActivityIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksBusinessActivityIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksBusinessActivityIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksBusinessActivityIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksBusinessActivityIriTemplate[mapping=$mapping, ]';
  }
}
