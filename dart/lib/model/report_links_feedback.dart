part of keyclic_sdk_api.api;

class ReportLinksFeedback {
  ReportLinksFeedback({
    this.href,
    this.iriTemplate,
  });

  factory ReportLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReportLinksFeedback(
      href: json['href'],
      iriTemplate: ReportLinksFeedbackIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the feedback associated to the given report. */
  String href;

  ReportLinksFeedbackIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReportLinksFeedback &&
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

  static List<ReportLinksFeedback> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => ReportLinksFeedback.fromJson(value))
            ?.toList() ??
        <ReportLinksFeedback>[];
  }

  static Map<String, ReportLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReportLinksFeedback>((String key, dynamic value) {
          return MapEntry(key, ReportLinksFeedback.fromJson(value));
        }) ??
        <String, ReportLinksFeedback>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReportLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
