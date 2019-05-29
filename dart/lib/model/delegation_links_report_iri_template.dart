part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplate {
  DelegationLinksReportIriTemplate();

  DelegationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']);
  }

  DelegationLinksReportIriTemplateMapping mapping;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplate[mapping=$mapping, ]';
  }

  static List<DelegationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksReportIriTemplate>()
        : json
            .map((value) => DelegationLinksReportIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReportIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReportIriTemplate.fromJson(value));
    }
    return map;
  }
}
