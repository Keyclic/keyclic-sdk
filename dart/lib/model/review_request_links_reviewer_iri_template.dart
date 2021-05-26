part of keyclic_sdk_api.api;

class ReviewRequestLinksReviewerIriTemplate {
  ReviewRequestLinksReviewerIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksReviewerIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewerIriTemplate(
      mapping: ContributionLinksContributorIriTemplateMapping.fromJson(
          json['mapping']),
    );
  }

  ContributionLinksContributorIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewerIriTemplate &&
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

  static List<ReviewRequestLinksReviewerIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksReviewerIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksReviewerIriTemplate>[];
  }

  static Map<String, ReviewRequestLinksReviewerIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksReviewerIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewRequestLinksReviewerIriTemplate.fromJson(value));
        }) ??
        <String, ReviewRequestLinksReviewerIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksReviewerIriTemplate[mapping=$mapping, ]';
  }
}
