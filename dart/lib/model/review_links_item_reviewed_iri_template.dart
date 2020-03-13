part of keyclic_sdk_api.api;

class ReviewLinksItemReviewedIriTemplate {
  ReviewLinksItemReviewedIriTemplate({
    this.mapping,
  });

  factory ReviewLinksItemReviewedIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewLinksItemReviewedIriTemplate(
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

    return other is ReviewLinksItemReviewedIriTemplate &&
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

  static List<ReviewLinksItemReviewedIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewLinksItemReviewedIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewLinksItemReviewedIriTemplate>[];
  }

  static Map<String, ReviewLinksItemReviewedIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewLinksItemReviewedIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewLinksItemReviewedIriTemplate.fromJson(value));
        }) ??
        <String, ReviewLinksItemReviewedIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewLinksItemReviewedIriTemplate[mapping=$mapping, ]';
  }
}
