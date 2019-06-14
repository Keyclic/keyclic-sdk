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
    iriTemplate = FeedbackLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the tracking associated to the given feedback. */
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksTracking && runtimeType == other.runtimeType;
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
    return 'FeedbackLinksTracking[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackLinksTracking> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksTracking>()
        : json.map((value) => FeedbackLinksTracking.fromJson(value)).toList();
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
}