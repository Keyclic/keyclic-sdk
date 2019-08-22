part of keyclic_sdk_api.api;

class FeedbackLinksSelf {
  FeedbackLinksSelf({
    this.href,
    this.iriTemplate,
  });

  FeedbackLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given feedback. */
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ href.hashCode ^ iriTemplate.hashCode;

  static List<FeedbackLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackLinksSelf>[]
        : json.map((value) => FeedbackLinksSelf.fromJson(value)).toList();
  }

  static Map<String, FeedbackLinksSelf> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackLinksSelf.fromJson(value));
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
    return 'FeedbackLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
