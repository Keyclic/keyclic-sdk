part of keyclic_sdk_api.api;

class DelegationLinksReportIriTemplate {
  DelegationLinksReportIriTemplate({
    this.mapping,
  });

  factory DelegationLinksReportIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksReportIriTemplate(
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

    return other is DelegationLinksReportIriTemplate &&
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

  static List<DelegationLinksReportIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                DelegationLinksReportIriTemplate.fromJson(value))
            ?.toList() ??
        <DelegationLinksReportIriTemplate>[];
  }

  static Map<String, DelegationLinksReportIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(
              key, DelegationLinksReportIriTemplate.fromJson(value));
        }) ??
        <String, DelegationLinksReportIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReportIriTemplate[mapping=$mapping, ]';
  }
}
