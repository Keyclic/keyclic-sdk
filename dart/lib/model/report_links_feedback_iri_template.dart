part of keyclic_sdk_api.api;

class ReportLinksFeedbackIriTemplate {
  ReportLinksFeedbackIriTemplate({
    this.mapping,
  });

  factory ReportLinksFeedbackIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksFeedbackIriTemplate(
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

    return other is ReportLinksFeedbackIriTemplate &&
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

  static List<ReportLinksFeedbackIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksFeedbackIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReportLinksFeedbackIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksFeedbackIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksFeedbackIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksFeedbackIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksFeedbackIriTemplate[mapping=$mapping, ]';
  }
}
