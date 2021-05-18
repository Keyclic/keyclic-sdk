part of keyclic_sdk_api.api;

class ReviewRequestLinksReviewIriTemplate {
  ReviewRequestLinksReviewIriTemplate({
    this.mapping,
  });

  factory ReviewRequestLinksReviewIriTemplate.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return null;
    }

    return ReviewRequestLinksReviewIriTemplate(
      mapping: ReviewLinksSelfIriTemplateMapping.fromJson(json['mapping']),
    );
  }

  ReviewLinksSelfIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewRequestLinksReviewIriTemplate &&
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

  static List<ReviewRequestLinksReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return json
            ?.map((dynamic value) =>
                ReviewRequestLinksReviewIriTemplate.fromJson(value))
            ?.toList() ??
        <ReviewRequestLinksReviewIriTemplate>[];
  }

  static Map<String, ReviewRequestLinksReviewIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    return json?.map<String, ReviewRequestLinksReviewIriTemplate>(
            (String key, dynamic value) {
          return MapEntry(
              key, ReviewRequestLinksReviewIriTemplate.fromJson(value));
        }) ??
        <String, ReviewRequestLinksReviewIriTemplate>{};
  }

  Map<String, dynamic> toJson() {
    return {
      if (mapping != null) 'mapping': mapping.toJson(),
    };
  }

  @override
  String toString() {
    return 'ReviewRequestLinksReviewIriTemplate[mapping=$mapping, ]';
  }
}
