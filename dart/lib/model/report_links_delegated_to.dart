part of keyclic_sdk_api.api;

class ReportLinksDelegatedTo {
  ReportLinksDelegatedTo();

  ReportLinksDelegatedTo.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the delegatedTo associated to the given report. */
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
    return 'ReportLinksDelegatedTo[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksDelegatedTo> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportLinksDelegatedTo>() : json.map((value) => ReportLinksDelegatedTo.fromJson(value)).toList();
  }

  static Map<String, ReportLinksDelegatedTo> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedTo>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportLinksDelegatedTo.fromJson(value));
    }
    return map;
  }
}
