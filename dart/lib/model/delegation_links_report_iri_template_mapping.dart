part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplateMapping {
  DelegationLinksReportIriTemplateMapping({
    this.report,
  });

  factory DelegationLinksReportIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksReportIriTemplateMapping(
      report: json['report'],
    );
  }

  String report;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksReportIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        report == other.report;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= report?.hashCode ?? 0;

    return hashCode;
  }

  static List<DelegationLinksReportIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DelegationLinksReportIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <DelegationLinksReportIriTemplateMapping>[];
  }

  static Map<String, DelegationLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, DelegationLinksReportIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksReportIriTemplateMapping.fromJson(value));
        }) ??
        <String, DelegationLinksReportIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (report != null) 'report': report,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplateMapping[report=$report, ]';
  }
}
