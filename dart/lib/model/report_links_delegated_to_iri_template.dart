part of keyclic_sdk_api.api;

class ReportLinksDelegatedToIriTemplate {
  ReportLinksDelegatedToIriTemplate({
    this.mapping,
  });

  ReportLinksDelegatedToIriTemplate.fromJson(Map<String, dynamic> json) {
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

    return other is ReportLinksDelegatedToIriTemplate &&
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
    return 'ReportLinksDelegatedToIriTemplate[mapping=$mapping, ]';
  }

  static List<ReportLinksDelegatedToIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<ReportLinksDelegatedToIriTemplate>()
        : json
            .map((value) => ReportLinksDelegatedToIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksDelegatedToIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksDelegatedToIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksDelegatedToIriTemplate.fromJson(value));
    }
    return map;
  }
}
