part of keyclic_sdk_api.api;

class ReportLinksOrganizationIriTemplate {
  ReportLinksOrganizationIriTemplate({
    this.mapping,
  });

  factory ReportLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOrganizationIriTemplate(
      mapping:
          CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOrganizationIriTemplate &&
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

  static List<ReportLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksOrganizationIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksOrganizationIriTemplate>[];
  }

  static Map<String, ReportLinksOrganizationIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, ReportLinksOrganizationIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksOrganizationIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }
}
