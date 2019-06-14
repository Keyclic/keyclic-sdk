part of keyclic_sdk_api.api;

class OperationLinksReport {
  OperationLinksReport({
    this.href,
    this.iriTemplate,
  });

  OperationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the report associated to the given operation. */
  String href;

  DelegationLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksReport && runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'OperationLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<OperationLinksReport> listFromJson(List<dynamic> json) {
    return json == null
        ? List<OperationLinksReport>()
        : json.map((value) => OperationLinksReport.fromJson(value)).toList();
  }

  static Map<String, OperationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, OperationLinksReport>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = OperationLinksReport.fromJson(value));
    }
    return map;
  }
}
