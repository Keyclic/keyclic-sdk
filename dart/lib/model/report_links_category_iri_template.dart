part of keyclic_sdk_api.api;

class ReportLinksCategoryIriTemplate {
  ReportLinksCategoryIriTemplate({
    this.mapping,
  });

  factory ReportLinksCategoryIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksCategoryIriTemplate(
      mapping: CategoryLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
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

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReportLinksCategoryIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksCategoryIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksCategoryIriTemplate>[];
  }

  static Map<String, ReportLinksCategoryIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksCategoryIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ReportLinksCategoryIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksCategoryIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksCategoryIriTemplate[mapping=$mapping, ]';
  }
}
