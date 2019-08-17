part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksOrganizationIriTemplate {
  FeedbackReviewRequestLinksOrganizationIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksOrganizationIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        CategoryLinksOrganizationIriTemplateMapping.fromJson(json['mapping']);
  }

  CategoryLinksOrganizationIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksOrganizationIriTemplate &&
        runtimeType == other.runtimeType;
  }

  @override
  int get hashCode => 0;

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksOrganizationIriTemplate[mapping=$mapping, ]';
  }

  static List<FeedbackReviewRequestLinksOrganizationIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? List<FeedbackReviewRequestLinksOrganizationIriTemplate>()
        : json
            .map((value) =>
                FeedbackReviewRequestLinksOrganizationIriTemplate.fromJson(
                    value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksOrganizationIriTemplate>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksOrganizationIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksOrganizationIriTemplate.fromJson(value));
    }
    return map;
  }
}
