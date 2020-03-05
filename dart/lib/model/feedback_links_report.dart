part of keyclic_sdk_api.api;

class FeedbackLinksReport {
  FeedbackLinksReport({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksReport.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReport(
      href: json['href'],
      iriTemplate: FeedbackLinksReportIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the report associated to the given feedback. */
  String href;

  FeedbackLinksReportIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReport &&
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

  static List<FeedbackLinksReport> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksReport.fromJson(value))
            ?.toList() ??
        <FeedbackLinksReport>[];
  }

  static Map<String, FeedbackLinksReport> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksReport.fromJson(value));
        }) ??
        <String, FeedbackLinksReport>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReport[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
