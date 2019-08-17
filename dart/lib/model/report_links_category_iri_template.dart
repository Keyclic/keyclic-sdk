part of keyclic_sdk_api.api;

class ReportLinksCategoryIriTemplate {
  ReportLinksCategoryIriTemplate({
    this.mapping,
  });

  ReportLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategoryIriTemplate &&
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
    return 'ReportLinksCategoryIriTemplate[mapping=$mapping, ]';
  }

  static List<ReportLinksCategoryIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksCategoryIriTemplate>()
        : json
            .map((value) => ReportLinksCategoryIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksCategoryIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksCategoryIriTemplate.fromJson(value));
    }
    return map;
  }
}
