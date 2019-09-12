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
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksCategoryIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReportLinksCategoryIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksCategoryIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReportLinksCategoryIriTemplate.fromJson(value))
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

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
