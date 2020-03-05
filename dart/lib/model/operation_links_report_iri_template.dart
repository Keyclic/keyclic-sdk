part of keyclic_sdk_api.api;

class OperationLinksReportIriTemplate {
  OperationLinksReportIriTemplate({
    this.mapping,
  });

  factory OperationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksReportIriTemplate(
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

    return other is OperationLinksReportIriTemplate &&
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

  static List<OperationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                OperationLinksReportIriTemplate.fromJson(value))
            ?.toList() ??
        <OperationLinksReportIriTemplate>[];
  }

  static Map<String, OperationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, OperationLinksReportIriTemplate.fromJson(value));
        }) ??
        <String, OperationLinksReportIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
