part of keyclic_sdk_api.api;

class FeedbackLinksBusinessActivity {
  FeedbackLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksBusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksBusinessActivity(
      href: json['href'],
      iriTemplate: FeedbackLinksBusinessActivityIriTemplate.fromJson(
          json['iriTemplate']),
    );
  }

  /* The URI of the businessActivity associated to the given feedback. */
  String href;

  FeedbackLinksBusinessActivityIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivity &&
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

  static List<FeedbackLinksBusinessActivity> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                FeedbackLinksBusinessActivity.fromJson(value))
            ?.toList() ??
        <FeedbackLinksBusinessActivity>[];
  }

  static Map<String, FeedbackLinksBusinessActivity> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksBusinessActivity>(
            (String key, dynamic value) {
          return MapEntry(key, FeedbackLinksBusinessActivity.fromJson(value));
        }) ??
        <String, FeedbackLinksBusinessActivity>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
