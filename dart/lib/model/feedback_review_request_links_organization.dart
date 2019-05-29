part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksOrganization {
  FeedbackReviewRequestLinksOrganization();

  FeedbackReviewRequestLinksOrganization.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate = CategoryLinksOrganizationIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the organization associated to the given feedbackreviewrequest. */
  String href;

  CategoryLinksOrganizationIriTemplate iriTemplate;

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksOrganization[href=$href, iriTemplate=$iriTemplate, ]';
  }

  static List<FeedbackReviewRequestLinksOrganization> listFromJson(List<dynamic> json) {
    return json == null ? List<FeedbackReviewRequestLinksOrganization>() : json.map((value) => FeedbackReviewRequestLinksOrganization.fromJson(value)).toList();
  }

  static Map<String, FeedbackReviewRequestLinksOrganization> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksOrganization>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = FeedbackReviewRequestLinksOrganization.fromJson(value));
    }
    return map;
  }
}
