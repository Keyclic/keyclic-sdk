// @dart=2.10
part of keyclic_sdk_api.api;

class FeedbackLinksPlansIriTemplate {
  FeedbackLinksPlansIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksPlansIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlansIriTemplate(
      mapping: FeedbackLinksPlansIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  FeedbackLinksPlansIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlansIriTemplate &&
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

  static List<FeedbackLinksPlansIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksPlansIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksPlansIriTemplate>[];
  }

  static Map<String, FeedbackLinksPlansIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksPlansIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackLinksPlansIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksPlansIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksPlansIriTemplate[mapping=$mapping, ]';
  }
}
