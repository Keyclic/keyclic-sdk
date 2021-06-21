// @dart=2.10
part of keyclic_sdk_api.api;

class AssignmentLinksReportIriTemplate {
  AssignmentLinksReportIriTemplate({
    this.mapping,
  });

  factory AssignmentLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReportIriTemplate(
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

    return other is AssignmentLinksReportIriTemplate &&
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

  static List<AssignmentLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                AssignmentLinksReportIriTemplate.fromJson(value))
            ?.toList() ??
        <AssignmentLinksReportIriTemplate>[];
  }

  static Map<String, AssignmentLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, AssignmentLinksReportIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, AssignmentLinksReportIriTemplate.fromJson(value));
        }) ??
        <String, AssignmentLinksReportIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
