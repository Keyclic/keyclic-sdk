part of keyclic_sdk_api.api;

class ReportLinksSelfIriTemplate {
  ReportLinksSelfIriTemplate({
    this.mapping,
  });

  factory ReportLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksSelfIriTemplate(
      mapping:
          AssignmentLinksReportIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  AssignmentLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksSelfIriTemplate &&
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

  static List<ReportLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksSelfIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksSelfIriTemplate>[];
  }

  static Map<String, ReportLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksSelfIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(key, ReportLinksSelfIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksSelfIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
