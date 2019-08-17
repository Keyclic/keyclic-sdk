part of keyclic_sdk_api.api;

class FeedbackLinksReporterIriTemplate {
  FeedbackLinksReporterIriTemplate({
    this.mapping,
  });

  FeedbackLinksReporterIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        DelegationLinksCreatedByIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksCreatedByIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporterIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReporterIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackLinksReporterIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksReporterIriTemplate>()
        : json
            .map((value) => FeedbackLinksReporterIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksReporterIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksReporterIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksReporterIriTemplate.fromJson(value));
    }
    return map;
  }
}
