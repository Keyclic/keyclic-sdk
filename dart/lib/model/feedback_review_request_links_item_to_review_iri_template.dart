part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksItemToReviewIriTemplate {
  FeedbackReviewRequestLinksItemToReviewIriTemplate({
    this.mapping,
  });

  FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(
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

    return other is FeedbackReviewRequestLinksItemToReviewIriTemplate &&
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

  static List<FeedbackReviewRequestLinksItemToReviewIriTemplate> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksItemToReviewIriTemplate>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(
                    value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksItemToReviewIriTemplate>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksItemToReviewIriTemplate>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksItemToReviewIriTemplate.fromJson(value));
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
    return 'FeedbackReviewRequestLinksItemToReviewIriTemplate[mapping=$mapping, ]';
  }
}
