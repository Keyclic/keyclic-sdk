part of keyclic_sdk_api.api;

class ReportLinksDelegatedFrom {
  ReportLinksDelegatedFrom({
    this.href,
    this.iriTemplate,
  });

  ReportLinksDelegatedFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        ReportLinksDelegatedFromIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the delegatedFrom associated to the given report. */
  String href;

  ReportLinksDelegatedFromIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksDelegatedFrom &&
        runtimeType == other.runtimeType;
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
    return 'ReportLinksDelegatedFrom[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksDelegatedFrom> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksDelegatedFrom>()
        : json
            .map((value) => ReportLinksDelegatedFrom.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksDelegatedFrom> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedFrom>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksDelegatedFrom.fromJson(value));
    }
    return map;
  }
}
