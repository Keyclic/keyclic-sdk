// @dart=2.10
part of keyclic_sdk_api.api;

class OperationLinksReport {
  OperationLinksReport({
    this.href,
    this.iriTemplate,
  });

  factory OperationLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return OperationLinksReport(
      href: json['href'],
      iriTemplate:
          OperationLinksReportIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the report associated to the given operation. */
  String href;

  OperationLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is OperationLinksReport &&
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

  static List<OperationLinksReport> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => OperationLinksReport.fromJson(value))
            ?.toList() ??
        <OperationLinksReport>[];
  }

  static Map<String, OperationLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, OperationLinksReport>((String key, dynamic value) {
          return MapEntry(key, OperationLinksReport.fromJson(value));
        }) ??
        <String, OperationLinksReport>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'OperationLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
