// @dart=2.10
part of keyclic_sdk_api.api;

class FeedbackLinksTrackingIriTemplate {
  FeedbackLinksTrackingIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksTrackingIriTemplate(
      mapping:
          ContributionLinksFeedbackIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTrackingIriTemplate &&
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

  static List<FeedbackLinksTrackingIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksTrackingIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksTrackingIriTemplate>[];
  }

  static Map<String, FeedbackLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksTrackingIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksTrackingIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksTrackingIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksTrackingIriTemplate[mapping=$mapping, ]';
  }
}
