part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksReviewIriTemplateMapping {
  FeedbackReviewRequestLinksReviewIriTemplateMapping({
    this.review,
  });

  FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(
      Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    review = json['review'];
  }

  String review;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksReviewIriTemplateMapping &&
        runtimeType == other.runtimeType &&
        review == other.review;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= (review?.hashCode ?? 0);

    return hashCode;
  }

  static List<FeedbackReviewRequestLinksReviewIriTemplateMapping> listFromJson(
      List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksReviewIriTemplateMapping>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(
                    value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksReviewIriTemplateMapping>
      mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksReviewIriTemplateMapping>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] =
          FeedbackReviewRequestLinksReviewIriTemplateMapping.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      'review': review,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksReviewIriTemplateMapping[review=$review, ]';
  }
}
