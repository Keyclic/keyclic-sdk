part of keyclic_sdk_api.api;

class ReviewLinksSelfIriTemplate {
  ReviewLinksSelfIriTemplate({
    this.mapping,
  });

  ReviewLinksSelfIriTemplate.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    mapping = FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(
        json['mapping']);
  }

  FeedbackReviewRequestLinksReviewIriTemplateMapping mapping;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is ReviewLinksSelfIriTemplate &&
        runtimeType == other.runtimeType &&
        mapping == other.mapping;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (mapping?.hashCode ?? 0);

    return hashCode;
  }

  static List<ReviewLinksSelfIriTemplate> listFromJson(List<dynamic> json) {
    return json == null
        ? <ReviewLinksSelfIriTemplate>[]
        : json
            .map((dynamic value) => ReviewLinksSelfIriTemplate.fromJson(value))
            .toList();
  }

  static Map<String, ReviewLinksSelfIriTemplate> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, ReviewLinksSelfIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = ReviewLinksSelfIriTemplate.fromJson(value));
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
    return 'ReviewLinksSelfIriTemplate[mapping=$mapping, ]';
  }
}
