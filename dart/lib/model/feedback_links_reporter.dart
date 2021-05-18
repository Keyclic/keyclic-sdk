part of keyclic_sdk_api.api;

class FeedbackLinksReporter {
  FeedbackLinksReporter({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksReporter.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksReporter(
      href: json['href'],
      iriTemplate:
          FeedbackLinksReporterIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the reporter associated to the given feedback. */
  String href;

  FeedbackLinksReporterIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksReporter &&
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

  static List<FeedbackLinksReporter> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksReporter.fromJson(value))
            ?.toList() ??
        <FeedbackLinksReporter>[];
  }

  static Map<String, FeedbackLinksReporter> mapFromJson(
      Map<String, dynamic> json) {
    return json
            ?.map<String, FeedbackLinksReporter>((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksReporter.fromJson(value));
        }) ??
        <String, FeedbackLinksReporter>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReporter[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
