part of keyclic_sdk_api.api;

class ReportLinksCategory {
  ReportLinksCategory();

  ReportLinksCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the category associated to the given report. */
  String href;

  CategoryLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksCategory[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksCategory>()
        : json.map((value) => ReportLinksCategory.fromJson(value)).toList();
  }

  static Map<String, ReportLinksCategory> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksCategory>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksCategory.fromJson(value));
    }
    return map;
  }
}
