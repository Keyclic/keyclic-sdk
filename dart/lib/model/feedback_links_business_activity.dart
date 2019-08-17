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
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksBusinessActivity &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

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

  static List<FeedbackLinksBusinessActivity> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksBusinessActivity>()
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
}
