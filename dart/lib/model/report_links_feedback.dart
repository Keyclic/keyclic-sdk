part of keyclic_sdk_api.api;

class ReportLinksFeedback {
  ReportLinksFeedback();

  ReportLinksFeedback.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = FeedbackLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the feedback associated to the given report. */
  String href;

  FeedbackLinksSelfIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'ReportLinksFeedback[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<ReportLinksFeedback> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ReportLinksFeedback>()
        : json.map((value) => ReportLinksFeedback.fromJson(value)).toList();
  }

  static Map<String, ReportLinksFeedback> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReportLinksFeedback>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReportLinksFeedback.fromJson(value));
    }
    return map;
  }
}
