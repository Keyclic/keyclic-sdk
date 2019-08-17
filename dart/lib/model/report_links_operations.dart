part of keyclic_sdk_api.api;

class ReportLinksOperations {
  ReportLinksOperations({
    this.href,
    this.iriTemplate,
  });

  ReportLinksOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReportLinksOperationsIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the operations associated to the given report. */
  String href;

  ReportLinksOperationsIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOperations && runtimeType == other.runtimeType;
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
    return 'ReportLinksOperations[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksOperations> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksOperations>()
        : json.map((value) => ReportLinksOperations.fromJson(value)).toList();
  }

  static Map<String, ReportLinksOperations> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOperations>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksOperations.fromJson(value));
    }
    return map;
  }
}
