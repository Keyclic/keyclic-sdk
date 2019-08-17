part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplateMapping {
  DelegationLinksReportIriTemplateMapping({
    this.report,
  });

  DelegationLinksReportIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    report = json['report'];
  }

  String report;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksReportIriTemplateMapping &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  Map<String, dynamic> toJson() {
    return {
      'report': report,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplateMapping[report=$report, ]';
  }
}
