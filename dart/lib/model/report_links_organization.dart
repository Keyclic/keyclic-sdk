part of keyclic_sdk_api.api;

class ReportLinksOrganization {
  ReportLinksOrganization();

  ReportLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given report. */
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
    return 'ReportLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null ? List<ReportLinksOrganization>() : json.map((value) => ReportLinksOrganization.fromJson(value)).toList();
  }

  static Map<String, ReportLinksOrganization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ReportLinksOrganization.fromJson(value));
    }
    return map;
  }
}
