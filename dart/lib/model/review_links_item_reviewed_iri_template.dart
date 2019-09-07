part of keyclic_sdk_api.api;

class ReviewLinksItemReviewedIriTemplate {
  ReviewLinksItemReviewedIriTemplate({
    this.mapping,
  });

  ReviewLinksItemReviewedIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping =
        ContributionLinksFeedbackIriTemplateMapping.fromJson(json['mapping']);
  }

  ContributionLinksFeedbackIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksItemReviewedIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode => 0 ^ mapping.hashCode;

  static List<ReviewLinksItemReviewedIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReviewLinksItemReviewedIriTemplate>[]
        : json
            .map((value) => ReviewLinksItemReviewedIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksItemReviewedIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksItemReviewedIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksItemReviewedIriTemplate.fromJson(value));
    }
    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReviewLinksItemReviewedIriTemplate[mapping=$mapping, ]';
  }
}