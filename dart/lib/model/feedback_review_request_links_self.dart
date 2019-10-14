part of keyclic_sdk_api.api;

class FeedbackReviewRequestLinksSelf {
  FeedbackReviewRequestLinksSelf({
    this.href,
    this.iriTemplate,
  });

  FeedbackReviewRequestLinksSelf.fromJson(Map<String, dynamic> json) {
    if (json == null) {
      return;
    }
    href = json['href'];
    iriTemplate =
        FeedbackReviewRequestLinksSelfIriTemplate.fromJson(json['iriTemplate']);
  }

  /* The URI of the self associated to the given feedbackreviewrequest. */
  String href;

  FeedbackReviewRequestLinksSelfIriTemplate iriTemplate;

  @override
  bool operator ==(dynamic other) {
    // Same reference
    if (identical(this, other)) {
      return true;
    }

    return other is FeedbackReviewRequestLinksSelf &&
        runtimeType == other.runtimeType &&
        href == other.href &&
        iriTemplate == other.iriTemplate;
  }

  /// By default hashCode return reference
  @override
  int get hashCode {
    int hashCode = 0;

    hashCode ^= href?.hashCode ?? 0;
    hashCode ^= iriTemplate?.hashCode ?? 0;

    return hashCode;
  }

  static List<FeedbackReviewRequestLinksSelf> listFromJson(List<dynamic> json) {
    return json == null
        ? <FeedbackReviewRequestLinksSelf>[]
        : json
            .map((dynamic value) =>
                FeedbackReviewRequestLinksSelf.fromJson(value))
            .toList();
  }

  static Map<String, FeedbackReviewRequestLinksSelf> mapFromJson(
      Map<String, dynamic> json) {
    var map = Map<String, FeedbackReviewRequestLinksSelf>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) =>
          map[key] = FeedbackReviewRequestLinksSelf.fromJson(value));
    }

    return map;
  }

  Map<String, dynamic> toJson() {
    return {
      if (href != null) 'href': href,
      if (iriTemplate != null) 'iriTemplate': iriTemplate,
    };
  }

  @override
  String toString() {
    return 'FeedbackReviewRequestLinksSelf[href=$href, iriTemplate=$iriTemplate, ]';
  }
}
