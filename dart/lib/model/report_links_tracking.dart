part of keyclic_sdk_api.api;

class ReportLinksTracking {
  ReportLinksTracking({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksTracking(
      href: json['href'],
      iriTemplate: ReportLinksTrackingIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the tracking associated to the given report. */
  String href;

  ReportLinksTrackingIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksTracking &&
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

  static List<ReportLinksTracking> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReportLinksTracking>[]
        : json
            .map((dynamic value) => ReportLinksTracking.fromJson(value))
            .toList();
  }

  static Map<String, ReportLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksTracking>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksTracking.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
