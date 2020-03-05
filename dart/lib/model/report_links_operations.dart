part of keyclic_sdk_api.api;

class ReportLinksOperations {
  ReportLinksOperations({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksOperations.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksOperations(
      href: json['href'],
      iriTemplate:
          ReportLinksOperationsIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the operations associated to the given report. */
  String href;

  ReportLinksOperationsIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksOperations &&
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

  static List<ReportLinksOperations> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksOperations.fromJson(value))
            ?.toList() ??
        <ReportLinksOperations>[];
  }

  static Map<String, ReportLinksOperations> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, ReportLinksOperations.fromJson(value));
        }) ??
        <String, ReportLinksOperations>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksOperations[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
