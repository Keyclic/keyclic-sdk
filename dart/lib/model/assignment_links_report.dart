// @dart=2.10
part of keyclic_sdk_api.api;

class AssignmentLinksReport {
  AssignmentLinksReport({
    this.href,
    this.iriTemplate,
  });

  factory AssignmentLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return AssignmentLinksReport(
      href: json['href'],
      iriTemplate:
          AssignmentLinksReportIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the report associated to the given assignment. */
  String href;

  AssignmentLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is AssignmentLinksReport &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<AssignmentLinksReport> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => AssignmentLinksReport.fromJson(value))
            ?.toList() ??
        <AssignmentLinksReport>[];
  }

  static Map<String, AssignmentLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, AssignmentLinksReport>((String key, dynamic value) {
          return MapEntry(key, AssignmentLinksReport.fromJson(value));
        }) ??
        <String, AssignmentLinksReport>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'AssignmentLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
