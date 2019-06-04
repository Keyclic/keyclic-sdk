part of keyclic_sdk_api.api;

class ReportLinksTracking {
  ReportLinksTracking({
    this.href,
    this.iriTemplate,
  });

  ReportLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the tracking associated to the given report. */
  String href;

  DelegationLinksReportIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksTracking> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksTracking>()
        : json.map((value) => ReportLinksTracking.fromJson(value)).toList();
  }

  static Map<String, ReportLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksTracking>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksTracking.fromJson(value));
    }
    return map;
  }
}
