part of keyclic_sdk_api.api;

class ReportLinksTrackingIriTemplate {
  ReportLinksTrackingIriTemplate({
    this.mapping,
  });

  factory ReportLinksTrackingIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksTrackingIriTemplate(
      mapping:
          DelegationLinksReportIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  DelegationLinksReportIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksTrackingIriTemplate &&
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

  static List<ReportLinksTrackingIriTemplate> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReportLinksTrackingIriTemplate.fromJson(value))
            ?.toList() ??
        <ReportLinksTrackingIriTemplate>[];
  }

  static Map<String, ReportLinksTrackingIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReportLinksTrackingIriTemplate.fromJson(value));
        }) ??
        <String, ReportLinksTrackingIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksTrackingIriTemplate[mapping=$mapping, ]';
  }
}
