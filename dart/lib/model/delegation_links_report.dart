part of keyclic_sdk_api.api;

class DelegationLinksReport {
  DelegationLinksReport({
    this.href,
    this.iriTemplate,
  });

  factory DelegationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return DelegationLinksReport(
      href: json['href'],
      iriTemplate:
          DelegationLinksReportIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the report associated to the given delegation. */
  String href;

  DelegationLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is DelegationLinksReport &&
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

  static List<DelegationLinksReport> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => DelegationLinksReport.fromJson(value))
            ?.toList() ??
        <DelegationLinksReport>[];
  }

  static Map<String, DelegationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, DelegationLinksReport.fromJson(value));
        }) ??
        <String, DelegationLinksReport>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'DelegationLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
