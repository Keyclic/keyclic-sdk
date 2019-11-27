part of keyclic_sdk_api.api;

class ReviewRequestLinksItemToReviewIriTemplate {
  ReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  ReviewRequestLinksItemToReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
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

    return other is ReviewRequestLinksItemToReviewIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= mapping?.hashCode ?? 0;

    return hashCode;
  }

  static List<ReviewRequestLinksItemToReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <ReviewRequestLinksItemToReviewIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksItemToReviewIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksItemToReviewIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksItemToReviewIriTemplate.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping,
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping, ]';
  }
}
