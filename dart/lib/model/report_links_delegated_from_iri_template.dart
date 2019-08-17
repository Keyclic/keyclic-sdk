part of keyclic_sdk_api.api;

class ReportLinksDelegatedFromIriTemplate {
  ReportLinksDelegatedFromIriTemplate({
    this.mapping,
  });

  ReportLinksDelegatedFromIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ReportLinksDelegatedFromIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  static List<ReportLinksDelegatedFromIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ReportLinksDelegatedFromIriTemplate>()
        : json
            .map((value) => ReportLinksDelegatedFromIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksDelegatedFromIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedFromIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksDelegatedFromIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksDelegatedFromIriTemplate[mapping=$mapping, ]';
  }
}
