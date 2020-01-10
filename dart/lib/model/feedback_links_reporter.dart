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
    return json == null
        ? <FeedbackLinksReporter>[]
        : json
            .map((dynamic value) => FeedbackLinksReporter.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksReporter> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksReporter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksReporter.fromJson(value));
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
    return 'FeedbackLinksReporter[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
