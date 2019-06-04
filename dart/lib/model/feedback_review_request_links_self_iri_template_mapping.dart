part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksSelfIriTemplateMapping {
  FeedbackReviewRequestLinksSelfIriTemplateMapping({
    this.reviewRequest,
  });

  FeedbackReviewRequestLinksSelfIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    reviewRequest = json['reviewRequest'];
  }

  String reviewRequest;

  Map<String, dynamic> toJson() {
    return {
      'reviewRequest': reviewRequest,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksSelfIriTemplateMapping[reviewRequest=$reviewRequest, ]';
  }

  static List<FeedbackReviewRequestLinksSelfIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksSelfIriTemplateMapping>()
        : json
            .map((value) =>
                FeedbackReviewRequestLinksSelfIriTemplateMapping.fromJson(
                    value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksSelfIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksSelfIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksSelfIriTemplateMapping.fromJson(value));
    }
    return map;
  }
}
