part of keyclic_sdk_api.api;

class ReportLinksOperationsIriTemplate {
  ReportLinksOperationsIriTemplate({
    this.mapping,
  });

  ReportLinksOperationsIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ReportLinksOperationsIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportLinksOperationsIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ReportLinksOperationsIriTemplate>()
        : json
            .map((value) => ReportLinksOperationsIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksOperationsIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOperationsIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksOperationsIriTemplate.fromJson(value));
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
    return 'ReportLinksOperationsIriTemplate[mapping=$mapping, ]';
  }
}
