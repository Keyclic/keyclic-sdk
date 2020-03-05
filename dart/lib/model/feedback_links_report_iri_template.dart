part of keyclic_sdk_api.api;

class FeedbackLinksReportIriTemplate {
  FeedbackLinksReportIriTemplate({
    this.mapping,
  });

  factory FeedbackLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReportIriTemplate(
      mapping:
          DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DelegationLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReportIriTemplate &&
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

  static List<FeedbackLinksReportIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksReportIriTemplate.fromJson(value))
            ?.toList() ??
        <FeedbackLinksReportIriTemplate>[];
  }

  static Map<String, FeedbackLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksReportIriTemplate.fromJson(value));
        }) ??
        <String, FeedbackLinksReportIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
