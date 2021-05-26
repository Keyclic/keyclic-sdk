part of keyclic_sdk_api.api;

class FeedbackLinksSelfIriTemplate {
  FeedbackLinksSelfIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksSelfIriTemplate(
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

    return other is FeedbackLinksSelfIriTemplate &&
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

  static List<FeedbackLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map(
                (dynamic value) => FeedbackLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksSelfIriTemplate>[];
  }

  static Map<String, FeedbackLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
