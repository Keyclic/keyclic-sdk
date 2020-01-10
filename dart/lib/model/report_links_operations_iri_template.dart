part of keyclic_sdk_api.api;

class ReportLinksOperationsIriTemplate {
  ReportLinksOperationsIriTemplate({
    this.mapping,
  });

  factory ReportLinksOperationsIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOperationsIriTemplate(
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

    return other is ReportLinksOperationsIriTemplate &&
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

  static List<ReportLinksOperationsIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReportLinksOperationsIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReportLinksOperationsIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksOperationsIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksOperationsIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksOperationsIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReportLinksOperationsIriTemplate[mapping=$mapping, ]';
  }
}
