part of keyclic_sdk_api.api;

class FeedbackLinksReporter {
  FeedbackLinksReporter({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksReporter.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        DelegationLinksCreatedByIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the reporter associated to the given feedback. */
  String href;

  DelegationLinksCreatedByIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackLinksReporter[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackLinksReporter> listFromJson(List<dynamic> json) {
    return json == null
        ? List<FeedbackLinksReporter>()
        : json.map((value) => FeedbackLinksReporter.fromJson(value)).toList();
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
}
