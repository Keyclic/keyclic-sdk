part of keyclic_sdk_api.api;

class FeedbackLinksTracking {
  FeedbackLinksTracking({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksTracking.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        FeedbackLinksTrackingIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the tracking associated to the given feedback. */
  String href;

  FeedbackLinksTrackingIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTracking &&
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

  static List<FeedbackLinksTracking> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksTracking>[]
        : json
            .map((dynamic value) => FeedbackLinksTracking.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksTracking> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksTracking>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksTracking.fromJson(value));
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
    return 'FeedbackLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
