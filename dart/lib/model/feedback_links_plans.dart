part of keyclic_sdk_api.api;

class FeedbackLinksPlans {
  FeedbackLinksPlans({
    this.href,
    this.iriTemplate,
  });

  factory FeedbackLinksPlans.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return FeedbackLinksPlans(
      href: json['href'],
      iriTemplate: FeedbackLinksPlansIriTemplate.fromJson(json['iriTemplate']),
    );
  }

  /* The URI of the plans associated to the given feedback. */
  String href;

  FeedbackLinksPlansIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksPlans &&
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

  static List<FeedbackLinksPlans> listFromJson(List<dynamic> json) {
    return json
            ?.map((dynamic value) => FeedbackLinksPlans.fromJson(value))
            ?.toList() ??
        <FeedbackLinksPlans>[];
  }

  static Map<String, FeedbackLinksPlans> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, FeedbackLinksPlans>((String key, dynamic value) {
          return MapEntry(key, FeedbackLinksPlans.fromJson(value));
        }) ??
        <String, FeedbackLinksPlans>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate?.toJson(),
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksPlans[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
