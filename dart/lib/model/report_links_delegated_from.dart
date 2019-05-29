part of keyclic_sdk_api.api;

class ReportLinksDelegatedFrom {
  ReportLinksDelegatedFrom();

  ReportLinksDelegatedFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the delegatedFrom associated to the given report. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

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
