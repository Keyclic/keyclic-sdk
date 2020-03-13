part of keyclic_sdk_api.api;

class FeedbackLinksReporterIriTemplate {
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksReporterIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporterIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporterIriTemplate &&
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

  static List<FeedbackLinksReporterIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksReporterIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksReporterIriTemplate>[];
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksReporterIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, FeedbackLinksReporterIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksReporterIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReporterIriTemplate[mapping=$mapping, ]';
  }
}
