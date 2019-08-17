part of keyclic_sdk_api.api;

class ReportLinksTrackingIriTemplate {
  ReportLinksTrackingIriTemplate({
    this.mapping,
  });

  ReportLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksTrackingIriTemplate &&
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
    return 'ReportLinksTrackingIriTemplate[mapping=$mapping, ]';
  }

  static List<ReportLinksTrackingIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksTrackingIriTemplate>()
        : json
            .map((value) => ReportLinksTrackingIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksTrackingIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksTrackingIriTemplate.fromJson(value));
    }
    return map;
  }
}
