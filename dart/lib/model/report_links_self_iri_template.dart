part of keyclic_sdk_api.api;

class ReportLinksSelfIriTemplate {
  ReportLinksSelfIriTemplate({
    this.mapping,
  });

  ReportLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ReportLinksSelfIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksSelfIriTemplate>()
        : json
            .map((value) => ReportLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksSelfIriTemplate.fromJson(value));
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
    return 'ReportLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
