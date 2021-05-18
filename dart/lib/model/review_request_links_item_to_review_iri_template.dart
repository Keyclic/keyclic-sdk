part of keyclic_sdk_api.api;

class ReviewRequestLinksItemToReviewIriTemplate {
  ReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksItemToReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksItemToReviewIriTemplate(
      mapping:
          ContributionLinksFeedbackIriTemplateMapping.fromJson(json['mapping']),
    );
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
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksItemToReviewIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksItemToReviewIriTemplate>[];
  }

  static Map<String, ReviewRequestLinksItemToReviewIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksItemToReviewIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewRequestLinksItemToReviewIriTemplate.fromJson(value));
        }) ??
        <String, ReviewRequestLinksItemToReviewIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      'mapping': mapping?.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping, ]';
  }
}
