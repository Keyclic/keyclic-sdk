part of keyclic_sdk_api.api;

class ReviewRequestLinksReviewerIriTemplate {
  ReviewRequestLinksReviewerIriTemplate({
    this.mapping,
  });

  ReviewRequestLinksReviewerIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = ContributionLinksContributorIriTemplateMapping.fromJson(
        json['mapping']);
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
    return json == null
        ? <ReviewRequestLinksReviewerIriTemplate>[]
        : json
            .map((dynamic value) =>
                ReviewRequestLinksReviewerIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewRequestLinksReviewerIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewRequestLinksReviewerIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewRequestLinksReviewerIriTemplate.fromJson(value));
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
    return 'ReviewRequestLinksReviewerIriTemplate[mapping=$mapping, ]';
  }
}
