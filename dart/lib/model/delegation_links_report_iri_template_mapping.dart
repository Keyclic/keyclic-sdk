part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplateMapping {
  DelegationLinksReportIriTemplateMapping();

  DelegationLinksReportIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    report = json['report'];
  }

  String report;

  Map<String, dynamic> toJson() {
    return {
      'report': report,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplateMapping[report=$report, ]';
  }

  static List<DelegationLinksReportIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<DelegationLinksReportIriTemplateMapping>()
        : json
            .map((value) =>
                DelegationLinksReportIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReportIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReportIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
