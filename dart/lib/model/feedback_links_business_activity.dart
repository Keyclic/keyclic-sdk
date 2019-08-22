part of keyclic_sdk_api.api;

class FeedbackLinksBusinessActivity {
  FeedbackLinksBusinessActivity({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksBusinessActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        FeedbackLinksBusinessActivityIriTemplate.fromJson(json['iriTemplate']);
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
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<FeedbackLinksBusinessActivity> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksBusinessActivity>[]
        : json
            .map((value) => FeedbackLinksBusinessActivity.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackLinksBusinessActivity> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksBusinessActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksBusinessActivity.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksBusinessActivity[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
