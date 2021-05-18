part of keyclic_sdk_api.api;

class AssignmentLinksReportIriTemplateMapping {
  AssignmentLinksReportIriTemplateMapping({
    this.report,
  });

  factory AssignmentLinksReportIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReportIriTemplateMapping(
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

    return other is AssignmentLinksReportIriTemplateMapping &&
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

  static List<AssignmentLinksReportIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksReportIriTemplateMapping.fromJson(value))
            ?.toList() ??
        <AssignmentLinksReportIriTemplateMapping>[];
  }

  static Map<String, AssignmentLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksReportIriTemplateMapping>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksReportIriTemplateMapping.fromJson(value));
        }) ??
        <String, AssignmentLinksReportIriTemplateMapping>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (report != null) 'report': report,
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksReportIriTemplateMapping[report=$report, ]';
  }
}
