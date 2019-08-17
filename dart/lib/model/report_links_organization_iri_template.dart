part of keyclic_sdk_api.api;

class ReportLinksOrganizationIriTemplate {
  ReportLinksOrganizationIriTemplate({
    this.mapping,
  });

  ReportLinksOrganizationIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }

  static List<ReportLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ReportLinksOrganizationIriTemplate>()
        : json
            .map((value) => ReportLinksOrganizationIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }
}
