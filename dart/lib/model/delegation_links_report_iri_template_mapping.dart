part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplateMapping {
  DelegationLinksReportIriTemplateMapping({
    this.report,
  });

  DelegationLinksReportIriTemplateMapping.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    report = json['report'];
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
    return json == null
        ? <DelegationLinksReportIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                DelegationLinksReportIriTemplateMapping.fromJson(value))
            .toList();
  }

  static Map<String, DelegationLinksReportIriTemplateMapping> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, DelegationLinksReportIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = DelegationLinksReportIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'report': report,
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplateMapping[report=$report, ]';
  }
}
