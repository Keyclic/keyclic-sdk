part of keyclic_sdk_api.api;

class ReportLinksFeedbackIriTemplate {
  ReportLinksFeedbackIriTemplate({
    this.mapping,
  });

  ReportLinksFeedbackIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  FeedbackLinksSelfIriTemplateMapping mapping;

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
  int get hashCode => 0 ^ mapping.hashCode;

  static List<ReportLinksFeedbackIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksFeedbackIriTemplate>[]
        : json
            .map((value) => ReportLinksFeedbackIriTemplate.fromJson(value))
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
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksFeedbackIriTemplate[mapping=$mapping, ]';
  }
}
