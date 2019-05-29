part of keyclic_sdk_api.api;

class ReportLinksSelf {
  ReportLinksSelf();

  ReportLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given report. */
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
    return 'ReportLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksSelf>()
        : json.map((value) => ReportLinksSelf.fromJson(value)).toList();
  }

  static Map<String, ReportLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksSelf.fromJson(value));
    }
    return map;
  }
}
