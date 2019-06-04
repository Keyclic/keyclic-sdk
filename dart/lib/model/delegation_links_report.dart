part of keyclic_sdk_api.api;

class DelegationLinksReport {
  DelegationLinksReport({
    this.href,
    this.iriTemplate,
  });

  DelegationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the report associated to the given delegation. */
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
    return 'DelegationLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<DelegationLinksReport> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DelegationLinksReport>()
        : json.map((value) => DelegationLinksReport.fromJson(value)).toList();
  }

  static Map<String, DelegationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReport.fromJson(value));
    }
    return map;
  }
}
